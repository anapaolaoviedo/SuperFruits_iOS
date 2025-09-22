//
//  pantalla2.swift
//  SuperFruits
//
//  Created by Nancy Paola Reyes Pazzi on 21/09/25.
//

import SwiftUI

struct Pantalla2: View {
    // 🔹 Cada botón tiene un título y una imagen asociada
    let botones = [
        ("Historia de NutriPup", "boton1"),
        ("Ayuda a NutriPup", "boton2"),
        ("La gran batalla", "boton3"),
        ("Manual de superpoderes", "boton4")
    ]
    
    var body: some View {
        FondoView(imagen: "pantalla2") {
            VStack(spacing: 40) {
                
                
                // 🔹 Grid de 2x2
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(botones, id: \.0) { titulo, imagen in
                        Button(action: {
                            print("\(titulo) presionado")
                        }) {
                            VStack {
                                Image(imagen)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 110, height: 110)
                                    .padding(.top, 5)
                                
                                Spacer()
                                
                                Text(titulo)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .padding(.horizontal, 4)
                                    .padding(.bottom, 8)
                            }
                            .frame(width: 155)
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                    }
                }
                
               
                
            }
            .padding()
        }
    }
}

struct Pantalla2_Previews: PreviewProvider {
    static var previews: some View {
        Pantalla2()
    }
}
