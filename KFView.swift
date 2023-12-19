import SwiftUI

struct KFView: View {
    @State private var kelvinValue = ""
    
    private var fahrenheitValue: Double? {
        if let kelvin = Double(kelvinValue) {
            return kelvin * 9/5 - 459.67
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
            
            if let fahrenheit = fahrenheitValue {
                Text("Fahrenheit: \(String(format: "%.2f", fahrenheit))°F")
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

struct KFView_Previews: PreviewProvider {
    static var previews: some View {
        KFView()
    }
}
