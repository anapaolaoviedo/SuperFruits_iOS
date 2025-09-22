//
//  Pantalla4.swift
//  SuperFruits
//
//  Created by Nancy Paola Reyes Pazzi on 21/09/25.
//
import SwiftUI

struct Pantalla4: View {
    var body: some View {
        FondoView(imagen: "pantalla4") {
            VStack(spacing: 50) {
        
                
                // 🔹 Botón de Home
                Button(action: {
                    print("Home presionado")
                    // Navegación a Pantalla1
                }) {
                    Image("homeButtonTransparent")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 105, height: 105)
                        .padding(.top, 710)
            
                }
            }
            .padding()
        }
    }
}

struct Pantalla4_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla4()
    }
}
