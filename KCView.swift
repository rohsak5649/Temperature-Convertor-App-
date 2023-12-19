import SwiftUI

struct KCView: View {
    @State private var kelvinValue = ""
    
    private var celsiusValue: Double? {
        if let kelvin = Double(kelvinValue) {
            return kelvin - 273.15
        }
        return nil
    }

    var body: some View {
        VStack {
            Image("temp")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64, height: 64)
            
            TextField("Enter Kelvin", text: $kelvinValue)
                .frame(width: 300, height: 30)
                .multilineTextAlignment(.center)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .textFieldStyle(PlainTextFieldStyle())
                .font(.headline)
            
            if let celsius = celsiusValue {
                Text("Celsius: \(String(format: "%.2f", celsius))°C")
                    .padding()
            } else {
                Text("Please enter a valid number.")
                    .foregroundColor(.red)
                    .padding()
            }
        }
        .padding()
    }
}

struct KCView_Previews: PreviewProvider {
    static var previews: some View {
        KCView()
    }
}
