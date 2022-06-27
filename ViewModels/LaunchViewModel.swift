//
//  LaunchViewModel.swift
//  PokeTinder
//
//  Created by MAC31 on 16/06/22.
//

import Foundation
import FirebaseAuth

class LaunchViewModel : ObservableObject {
    
//    vamos a instanciar a nuestro appState
    let appState = AppState.shared
    
//    Va a ser la funcion que se ejecute cuando instanciesmos a LaunchViewModel
    init() {
//        vamos a cambiar el estado de la aplicacion
        appState.currentScreen = Auth.auth().currentUser != nil ? .main : .signIn
    }
}
