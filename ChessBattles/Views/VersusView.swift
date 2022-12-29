//
//  VersusView.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-03.
//

import SwiftUI

struct VersusView: View {
    
    @EnvironmentObject var calculator:Calculator
    @StateObject private var vm = PlayerViewModel()
    @ObservedObject var userPlayers = UserPlayersViewModel()
    @StateObject var logs = LogsViewModel()
    @State var addPlayerOne: Bool = false
    @State var addPlayerTwo: Bool = false
    
    @State var versusResult: String = ""
    
    var body: some View {
        
        VStack{
            Spacer()
            Button {
                addPlayerOne = true
                
            } label: {
                Text("Add Player 1")
                Image(systemName: "plus.circle.fill")
            }
            .sheet(isPresented: $addPlayerOne, content: {
                AddPlayers(position: 1)
            })
            
            if(calculator.aElo != 0){
                Text("\(calculator.aName), \(calculator.aElo)")
            }
            
            Text("VS")
            
            Button {
                addPlayerTwo = true
            } label: {
                Text("Add Player 2")
                Image(systemName: "plus.circle.fill")
            }
            .sheet(isPresented: $addPlayerTwo, content: {
                AddPlayers(position: 2)
            })
            
            if(calculator.bElo != 0){
                Text("\(calculator.bName), \(calculator.bElo)")
            }
            Spacer()
            Button {
                
                versusResult = calculator.versusCalculate()
                if(versusResult != "please select two players"){
                    logs.addLog(logName: versusResult)
                }
            } label: {
                VStack{
                    Text("Calculate win odds")
                    Image(systemName: "hare.fill")
                }
            }
            Text("\(versusResult)")
                .foregroundColor(.green)
                .frame(width: 300)
            
            Spacer()
            
        }
        .navigationTitle("Versus")
        .onAppear(perform: vm.fetchPlayers)
        .onAppear(perform: userPlayers.getData)
        
    }
}
struct VersusView_Previews: PreviewProvider {
    static var previews: some View {
        VersusView()
    }
}
