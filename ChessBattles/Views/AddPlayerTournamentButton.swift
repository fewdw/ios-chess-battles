//
//  AddPlayerTournamentButton.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-12-04.
//

import SwiftUI

struct AddPlayerTournamentButton: View {
    
    @EnvironmentObject var calculator:Calculator
    @State var addPlayer: Bool = false
    @State var position:Int = 3
    
    var body: some View {
        
        Button {
            addPlayer = true
            
        } label: {
            Text("Add Player \(position - 2)")
            Image(systemName: "plus.circle.fill")
        }
        .sheet(isPresented: $addPlayer, content: {
            AddPlayers(position: position)
        })
        if(Int(calculator.elos[position - 3]) != 0){
            Text("\(calculator.names[position - 3]), \(calculator.elos[position - 3])")
        }
        
        if(position != 10){
            Text("vs")
        }
        
        
    }
}

struct AddPlayerTournamentButton_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayerTournamentButton(position:1)
    }
}
