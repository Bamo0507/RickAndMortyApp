//
//  Character.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//

// Asi es como se define una DATA CLASS
import Foundation

// Modelo de personaje similar a tu data class en Kotlin.
// Usamos Identifiable para que SwiftUI pueda iterar fácilmente en listas.
struct Character: Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let imageUrl: String
}
