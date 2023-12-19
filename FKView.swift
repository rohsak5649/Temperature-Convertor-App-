import SwiftUI

struct FKView: View {
    @State private var fahrenheitValue = ""
    
    private var kelvinValue: Double? {
        if let fahrenheit = Double(fahrenheitValue) {
            return (fahrenheit + 459.67) * 5/9
        }
        return nil
    }

    var body: some View {
        VStack {
            Image("temp")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64, height: 64)
            
            TextField("Enter Fahrenheit", text: $fahrenheitValue)
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

struct FKView_Previews: PreviewProvider {
    static var previews: some View {
        FKView()
    }
}
