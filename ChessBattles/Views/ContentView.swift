//
//  ContentView.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        TabView{
            //NavigationView{
                PlayerListView()
              //  .navigationTitle("Players")
            //}
            .tabItem(){
                Label("Players",systemImage: "person")
            }
            NavigationView{
                TournamentView()
            }
            .tabItem(){
                Label("Tournaments",systemImage: "person.3")
            }
            NavigationView{
                VersusView()
            }
            .tabItem(){
                Label("Versus",systemImage: "person.line.dotted.person.fill")
            }
            NavigationView{
                HistoryView()
            }
            .tabItem(){
                Label("History",systemImage: "list.bullet")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
