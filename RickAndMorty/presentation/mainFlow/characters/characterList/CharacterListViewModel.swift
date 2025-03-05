//
//  CharacterListViewModel.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//

import SwiftUI

final class CharacterListViewModel: ObservableObject {
    @Published var state = CharacterListState()
    
    // Usamos la base de datos dummy
    private let characterDb = CharacterDb()
    
    // Simula la carga de datos con un delay (4 segundos)
    func getListCharacters() {
        state.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            let characters = self.characterDb.getAllCharacters()
            
            if characters.isEmpty {
                self.state = CharacterListState(isLoading: false, characterList: [], hasError: true)
            } else {
                self.state = CharacterListState(isLoading: false, characterList: characters, hasError: false)
            }
        }
    }
    
}
