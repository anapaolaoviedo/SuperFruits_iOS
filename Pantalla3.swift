//
//  pantalla3.swift
//  SuperFruits
//
//  Created by Nancy Paola Reyes Pazzi on 21/09/25.
//
import SwiftUI

struct Pantalla3: View {
    var body: some View {
        FondoView(imagen: "pantalla3") {
            VStack(spacing: 50) {
                
                
                // 🔹 HStack con 3 botones de imagen
                HStack(spacing: 40) {
                    // Prev Button
                    Button(action: {
                        print("Prev presionado")
                        // Aquí puedes ir a Pantalla2
                    }) {
                        Image("prevButton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                            .padding(.top, 670)
                    }
                    // Home Button
                    Button(action: {
                        print("Home presionado")
                        // Aquí puedes ir a Pantalla1 o donde quieras
                    }) {
                        Image("homeButton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                            .padding(.top, 670)
                    }
                    
                   
                    
                    // Next Button
                    Button(action: {
                        print("Next presionado")
                        // Aquí puedes ir a otra pantalla si quieres
                    }) {
                        Image("nextButton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 90)
                            .padding(.top, 670)
                    }
                }
            }
            .padding()
        }
    }
}

struct Pantalla3_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla3()
    }
}
