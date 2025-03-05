//
//  CharacterRow.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//

import SwiftUI

struct CharacterRow: View {
    let character: Character
    
    var body: some View {
        HStack {
            // Carga la imagen de forma asíncrona
            AsyncImage(url: URL(string: character.imageUrl)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                } else if phase.error != nil {
                    // Si ocurre un error al cargar la imagen
                    Color.red
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                } else {
                    // Mientras se carga, muestra un ProgressView
                    ProgressView()
                        .frame(width: 64, height: 64)
                }
            }
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.headline)
                Text("\(character.species) - \(character.status)")
                    .font(.subheadline)
            }
            .padding(.leading, 8)
        }
        .padding(.vertical, 8)
    }
}
