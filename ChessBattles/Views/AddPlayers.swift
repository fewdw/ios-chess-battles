//
//  AddPlayers.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-12-02.
//

import SwiftUI

struct AddPlayers: View {
    
    @StateObject private var vm = PlayerViewModel()
    @ObservedObject var userPlayers = UserPlayersViewModel()
    let adaptiveColumn = [GridItem(.adaptive(minimum: 160))]
    @State var showingCreateView: Bool = false
    @State var showingEditView: Bool = false
    @State var userPlayerToEdit:UserPlayers = UserPlayers()
    @EnvironmentObject var calculator:Calculator
    @State var position: Int
    
    @State var  searchText = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView{
            
            SearchBar(text: $searchText)
            //user players
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
            }
            ForEach(userPlayers.list){ player in
                
                HStack{
                    if(Int(player.rating) != 0){
                        Text("\(player.name), \(player.rating)")
                    }
                    PlusAddButton(playerName: player.name, playerElo: player.rating, position: position)
                    
                }
                
            }
            
            ForEach(vm.players){ player in
                HStack{
                    if(Int(player.elo) != 0){
                        if(searchText == ""){
                            Group{
                                Text("\(player.name), \(player.elo)")
                                Spacer()
                                PlusAddButton(playerName: player.name, playerElo: player.elo, position: position)
                            }
                            .padding(.bottom,2)
                            
                            
                        }else{
                            if(player.name.contains(searchText)){
                                Group{
                                    Text("\(player.name), \(player.elo)")
                                        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: 1)
                                    Spacer()
                                    PlusAddButton(playerName: player.name, playerElo: player.elo, position: position)
                                        .onTapGesture {
                                            presentationMode.wrappedValue.dismiss()
                                            
                                        }
                                        .padding(.bottom,2)
                                }

                            }
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
            }
            .searchable(text: $searchText)
            .onAppear(perform: vm.fetchPlayers)
            .onAppear(perform: userPlayers.getData)
            
        }
    }
    
}



struct AddPlayers_Previews: PreviewProvider {
    static var previews: some View {
        AddPlayers(position: 0)
    }
}
