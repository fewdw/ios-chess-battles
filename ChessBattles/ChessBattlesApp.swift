//
//  ChessBattlesApp.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-03.
//

import SwiftUI
import Firebase

@main
struct ChessBattlesApp: App {
    @StateObject var calculator: Calculator = Calculator()
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(calculator)
        }
    }
}
