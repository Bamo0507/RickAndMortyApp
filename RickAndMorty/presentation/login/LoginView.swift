//
//  LoginView.swift
//  RickAndMorty
//
//  Created by Bryan Martinez on 5/03/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        NavigationView {
            //Siempre se coloca el ZStack, para poder tener un fondo particular, como en Android
            ZStack {
                
                // Automaticamente lo jala como un .background
                Color("Surface")
                    .edgesIgnoringSafeArea(.all)
                
                // Contenido Principal
                VStack {
                    // Empuja al centro
                    Spacer()
                    
                    //Como parametro se manda el logo que se necesita
                    Image("logorickmorty") //Se manda como parametro lo que se quiere hacer
                        .resizable() //Ajusta para que se acople a la pantalla, pero la deja toda apretada
                        .aspectRatio(contentMode: .fit) // Igual que el fit de android, hace que se acople pero bien
                        .frame(width: 800, height: 200) // Especificar el tamanio
                        .clipped() //Ahorita no hace anda, pero recorta la imagen de ser necesario
                    
                    //Asi se coloca un boton
                    NavigationLink(destination: CharacterListView()){
                        Text("Log In")
                            .font(.headline) // size
                            .foregroundColor(.white) //color texto
                            .padding()
                            .frame(maxWidth: 200) // define lo que ocupa
                            .background(Color("PrimaryColor"))
                            .cornerRadius(30)
                            .padding([.leading, .trailing], 24)
                    }
                    .padding(.bottom, 40)
                    
                    Spacer()
                
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
        
        
    }
}

struct MyScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
