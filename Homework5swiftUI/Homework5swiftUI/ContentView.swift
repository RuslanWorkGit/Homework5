//
//  ContentView.swift
//  Homework5swiftUI
//
//  Created by Ruslan Liulka on 04.12.2024.
//

import SwiftUI



struct ContentView: View {
    
    @State private var givenName: String = ""
    @State private var familyName: String = ""
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                Text("Пошта:")
                TextField(
                    "Email",
                    text: $givenName
                )
                .disableAutocorrection(true)
                Text("Пароль:")
                TextField(
                    "Password",
                    text: $familyName
                )
                .disableAutocorrection(true)
            }
            .textFieldStyle(.roundedBorder)
            .padding([.leading, .trailing], horizontalSizeClass == .regular ? 80 : 16)
            .padding(.bottom, 30)
            
            
            VStack(spacing: 30) {
                Button("Увійти") {
                    
                }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.4)
                .foregroundColor(.white)
                .padding(15)
                .background(.blue)
                .cornerRadius(10)
                
                
                Button("Реєстрація") {
                    
                }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.4)
                .foregroundColor(.white)
                .padding(15)
                .background(.blue)
                .cornerRadius(10)
                
            }
            
        }
        .offset(y: -50)
        
        
        
    }
        
        
}

#Preview {
    ContentView()
}
