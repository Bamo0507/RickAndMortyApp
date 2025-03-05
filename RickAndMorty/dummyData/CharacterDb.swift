//
//  CharacterDb.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//


import Foundation

final class CharacterDb {
    // Lista de personajes dummy
    private let characters: [Character] = [
        Character(id: 1, name: "Rick Sanchez", status: "Alive", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"),
        Character(id: 2, name: "Morty Smith", status: "Alive", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/2.jpeg"),
        Character(id: 3, name: "Summer Smith", status: "Alive", species: "Human", gender: "Female", imageUrl: "https://rickandmortyapi.com/api/character/avatar/3.jpeg"),
        Character(id: 4, name: "Beth Smith", status: "Alive", species: "Human", gender: "Female", imageUrl: "https://rickandmortyapi.com/api/character/avatar/4.jpeg"),
        Character(id: 5, name: "Jerry Smith", status: "Alive", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/5.jpeg"),
        Character(id: 6, name: "Abadango Cluster Princess", status: "Alive", species: "Alien", gender: "Female", imageUrl: "https://rickandmortyapi.com/api/character/avatar/6.jpeg"),
        Character(id: 7, name: "Abradolf Lincler", status: "unknown", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/7.jpeg"),
        Character(id: 8, name: "Adjudicator Rick", status: "Dead", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/8.jpeg"),
        Character(id: 9, name: "Agency Director", status: "Dead", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/9.jpeg"),
        Character(id: 10, name: "Alan Rails", status: "Dead", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/10.jpeg"),
        Character(id: 11, name: "Albert Einstein", status: "Dead", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/11.jpeg"),
        Character(id: 12, name: "Alexander", status: "Dead", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/12.jpeg"),
        Character(id: 13, name: "Alien Googah", status: "unknown", species: "Alien", gender: "unknown", imageUrl: "https://rickandmortyapi.com/api/character/avatar/13.jpeg"),
        Character(id: 14, name: "Alien Morty", status: "unknown", species: "Alien", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/14.jpeg"),
        Character(id: 15, name: "Alien Rick", status: "unknown", species: "Alien", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/15.jpeg"),
        Character(id: 16, name: "Amish Cyborg", status: "Dead", species: "Alien", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/16.jpeg"),
        Character(id: 17, name: "Annie", status: "Alive", species: "Human", gender: "Female", imageUrl: "https://rickandmortyapi.com/api/character/avatar/17.jpeg"),
        Character(id: 18, name: "Antenna Morty", status: "Alive", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/18.jpeg"),
        Character(id: 19, name: "Antenna Rick", status: "unknown", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/19.jpeg"),
        Character(id: 20, name: "Ants in my Eyes Johnson", status: "unknown", species: "Human", gender: "Male", imageUrl: "https://rickandmortyapi.com/api/character/avatar/20.jpeg")
    ]
    
    // Devuelve todos los personajes
    func getAllCharacters() -> [Character] {
        return characters
    }
    
    // Devuelve el personaje cuyo id coincide. Se retorna un optional por seguridad.
    func getCharacter(by id: Int) -> Character? {
        return characters.first { $0.id == id }
    }
}
