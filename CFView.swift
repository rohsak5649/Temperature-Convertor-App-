//
//  CFView.swift
//  TemperatureConverter
//
//  Created by Rohan Sakhare on 19/12/23.
//

import SwiftUI

struct CFView: View {
    
    @State private var celsiusValue = ""
    
    
    private var fahrenheitValue: Double? {
        if let celsius = Double(celsiusValue) {
            return celsius * 9/5 + 32
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

struct CFView_Previews: PreviewProvider {
    static var previews: some View {
        CFView()
    }
}

