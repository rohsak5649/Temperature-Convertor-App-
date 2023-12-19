//
//  CalculateView.swift
//  TempConvertor
//
//  Created by Rohan Sakhare on 19/12/23.
//

import SwiftUI

struct CalculateView: View {
    @State var number = ""
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink("Celsius (°C) to Fahrenheit (°F)", destination: CFView())
                    .padding()
                
                NavigationLink("Fahrenheit (°F) to Celsius (°C)", destination: FCView())
                    .padding()
                
                NavigationLink("Celsius (°C) to Kelvin (K)", destination: CFView())
                    .padding()
                
                
                NavigationLink("Kelvin (K)  to Celsius (°C)", destination: CFView())
                    .padding()
                
                NavigationLink("Kelvin (K)  to Fahrenheit (°F)", destination: CFView())
                    .padding()
                
                NavigationLink("Fahrenheit (°F) to Kelvin (K)", destination: CFView())
                    .padding()
                
                
                
            }
            .frame(width: 300) // Set the width of the VStack
                        .background(Color.gray.opacity(0.2)) // Set the background color to light gray
                        .cornerRadius(8) // Add corner radius if needed
                        .padding() // Add padding around the VStack
                        .navigationTitle("Choose You Want")
        }
        
        
    }
}

#Preview {
    CalculateView()
}
