//
//  ChaaracterListView.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//

import SwiftUI

struct CharacterListView: View {
    @StateObject private var viewModel = CharacterListViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.state.hasError {
                    // Pantalla de error con botón de reintento
                    VStack(spacing: 16) {
                        Text("Ocurrió un error al cargar la lista de personajes.")
                        Button("Reintentar") {
                            viewModel.onRetryClick()
                        }
                    }
                } else if viewModel.state.isLoading {
                    // Pantalla de carga
                    VStack(spacing: 16) {
                        ProgressView("Cargando...")
                        // Botón opcional para simular un error manualmente
                        Button("Simular Error") {
                            viewModel.onLoadingClick()
                        }
                    }
                } else {
                    // Lista de personajes
                    List(viewModel.state.characterList) { character in
                        CharacterRow(character: character)
                    }
                    .listStyle(PlainListStyle())
                }
            }
            .navigationTitle("Characters")
        }
        .onAppear {
            viewModel.getListCharacters()
        }
    }
}
