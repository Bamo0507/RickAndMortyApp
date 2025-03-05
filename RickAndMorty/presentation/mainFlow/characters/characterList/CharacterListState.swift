//
//  CharacterListState.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//

// Se usan llaves, no parentesis
import Foundation

struct CharacterListState {
    var isLoading: Bool = false
    var characterList: [Character] = []
    var hasError: Bool = false
}
