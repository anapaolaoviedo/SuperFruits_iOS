import SwiftUI

struct FondoView<Content: View>: View {
    let imagen: String
    let contenido: Content

    init(imagen: String, @ViewBuilder contenido: () -> Content) {
        self.imagen = imagen
        self.contenido = contenido()
    }

    var body: some View {
        ZStack {
            Image(imagen)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            contenido
        }
    }
}//
//  FondoView.swift
//  SuperFruits
//
//  Created by Nancy Paola Reyes Pazzi on 21/09/25.
//

