//
//  ChaaracterListView.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//

import SwiftUI

struct CharacterListView: View {
    
    // De momento, mando a llamar en la screen, despues ya con el VM
    let characterDb = CharacterDb().getAllCharacters()
    
    var body: some View {
            
        // Top App Bar, no se define un objeto
        NavigationView{
            //Se coloca el contenido aca
            List(characterDb) { character in
                // Asi se indica a donde quiero que se navegue, mandando que cosas
                // adentro se pone lo que se puede clickear, en este caso el cahracter item view
                NavigationLink(destination: CharacterDetailView(character: character)) {
                    CharacterItemView(character: character)
                }
            }

            //Antes de que cierre el bracket se pone el titulo que se quiere
            .navigationTitle("Characters")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .listStyle(PlainListStyle()) //Cambia el estilo de la lista
            }
            .background(Color("Surface"))
        }
}


// Similar a un composable, se define un Struct que devuelve un View
struct CharacterItemView: View {
    // Se defne lo que se necesitara como parametro
    let character: Character
    
    var body: some View {
        HStack {
            // Imagen a la izquierda - async
            AsyncImage(url: URL(string: character.imageUrl)) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 70, height: 67)
                        .clipShape(Circle())
                } else {
                    //Si no carga, que se muestre esto
                    Circle().fill(Color.gray)
                        .frame(width: 60, height: 60)
                }
                
            }
            .padding(.leading, 8)
            
            // A la derecha lo que quiero mostrar
            VStack(alignment: .leading, spacing: 9) {
                Text(character.name)
                    .font(.headline) //lo estiliza con negrita
                
                Text("\(character.species) - \(character.status)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 12)
            
        }
        .contentShape(Rectangle())
        .padding(.vertical, 8)
    }
}


// Colocar un Preview
struct My_CharacterList_Preview: PreviewProvider {
    static var previews: some View {
        CharacterListView()
    }
}
