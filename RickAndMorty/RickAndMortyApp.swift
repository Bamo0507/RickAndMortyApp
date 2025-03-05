//
//  RickAndMortyApp.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 4/03/25.
//

import SwiftUI

// Este es como el punto de partida, se dice donde quiero que comience
// la app a ejecutarse
@main
struct RickAndMortyApp: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "PrimaryColor") // Color de fondo personalizado
        appearance.titleTextAttributes = [
            .font: UIFont.systemFont(ofSize: 30, weight: .bold),
        ]
        appearance.largeTitleTextAttributes = [
            .font: UIFont.systemFont(ofSize: 40, weight: .bold)
        ]
    
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
