//
//  TournamentView.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-03.
//

import SwiftUI

struct TournamentView: View {
    
    @EnvironmentObject var calculator:Calculator
    @StateObject private var vm = PlayerViewModel()
    @ObservedObject var userPlayers = UserPlayersViewModel()
    @StateObject var logs = LogsViewModel()
    
    @State var addPlayerOne: Bool = false
    @State var addPlayerTwo: Bool = false
    
    @State var versusResult: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                
                AddPlayerTournamentButton(position: 3)
                AddPlayerTournamentButton(position: 4)
                AddPlayerTournamentButton(position: 5)
                AddPlayerTournamentButton(position: 6)
                AddPlayerTournamentButton(position: 7)
                AddPlayerTournamentButton(position: 8)
                AddPlayerTournamentButton(position: 9)
                AddPlayerTournamentButton(position: 10)
                
                Button {
                    versusResult = calculator.tournamentCalculate()
                    if(versusResult != "please select 8 players"){
                        logs.addLog(logName: versusResult)
                    }

                } label: {
                    VStack{
                        Text("Calculate win odds")
                        Image(systemName: "hare.fill")
                    }.padding(30)
                }
                Text("\(versusResult)")
                    .foregroundColor(.green)
                    .frame(width: 300)
            }
            .navigationTitle("Tournament")
            .onAppear(perform: vm.fetchPlayers)
            .onAppear(perform: userPlayers.getData)
        }

        
    }
}

struct TournamentView_Previews: PreviewProvider {
    static var previews: some View {
        TournamentView()
    }
}
