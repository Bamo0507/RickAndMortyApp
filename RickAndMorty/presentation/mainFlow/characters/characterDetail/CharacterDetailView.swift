//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 5/03/25.
//
import SwiftUI
struct CharacterDetailView: View {
    let character: Character
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .bottom) {
                AsyncImage(url: URL(string: character.imageUrl)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 200)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color("PrimaryColor"), lineWidth: 4)
                            )
                            .shadow(radius: 1)
                    } else {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 150, height: 150)
                    }
                }
        
            }
            .frame(height: 200 + 75) // Ajustar la altura total

            VStack(spacing: 16) {
                // Nombre
                Text(character.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                // Info en un Card
                VStack(alignment: .center, spacing: 8) {
                    Text("Status: \(character.status)")
                    Text("Species: \(character.species)")
                    Text("Gender: \(character.gender)")
                }
                .font(.headline)
                .padding(.vertical, 24)
                .padding(.horizontal, 40)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color("PrimaryColor").opacity(0.1))
                .cornerRadius(12)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct Character_Detail_Preview: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character:
            Character(id: 1,
                      name: "Rick Sanchez",
                      status: "Alive",
                      species: "Human",
                      gender: "Male",
                      imageUrl: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"))
    }
}
