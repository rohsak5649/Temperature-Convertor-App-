//
//  ContentView.swift
//  TempConvertor
//
//  Created by Rohan Sakhare on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var selectYourCountry = ""
    
    var body: some View {
        
        
        NavigationView {
            
            
            
            VStack{
                Image("temp")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64, height: 64)
                
                Text("Temperature Convertor")
                    .font(.title)
                
                TextField("Enter Your Name ", text: $selectYourCountry)
                    .frame(width: 300, height: 30)
                    .multilineTextAlignment(.center)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(.headline)
                NavigationLink("NEXT", destination: CalculateView()) .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    .padding()
                
                
                
                
                
                
                
            }
            
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
