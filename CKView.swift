import SwiftUI

struct CKView: View {
    @State private var celsiusValue = ""
    
    private var kelvinValue: Double? {
        if let celsius = Double(celsiusValue) {
            return celsius + 273.15
        }
        return nil
    }

    var body: some View {
        VStack {
            Image("temp")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64, height: 64)
            
            TextField("Enter Celsius", text: $celsiusValue)
                .frame(width: 300, height: 30)
                .multilineTextAlignment(.center)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .textFieldStyle(PlainTextFieldStyle())
                .font(.headline)
            
            if let kelvin = kelvinValue {
                Text("Kelvin: \(String(format: "%.2f", kelvin))K")
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

struct CKView_Previews: PreviewProvider {
    static var previews: some View {
        CKView()
    }
}
