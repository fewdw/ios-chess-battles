//
//  PlayerListView.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-03.
//

import SwiftUI




struct PlayerListView: View {
    
    @StateObject private var vm = PlayerViewModel()
    @ObservedObject var userPlayers = UserPlayersViewModel()
    let adaptiveColumn = [GridItem(.adaptive(minimum: 160))]
    @State var showingCreateView: Bool = false
    @State var showingEditView: Bool = false
    @State var userPlayerToEdit:UserPlayers = UserPlayers()
    
    @State var userPlayerToggle = true
    @State var playerToggle = false
    
    @State var  searchText = ""

    
    //PLAYER FILTER
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                //radio button
                Toggle(isOn: $userPlayerToggle) {
                    Text("user players")
                }
                .padding(10)
                .onAppear(perform: vm.fetchPlayers)
                .onAppear(perform: userPlayers.getData)
                Toggle(isOn: $playerToggle) {
                    Text("official Players")
                }
                .padding(10)
                
                SearchBar(text: $searchText)
                
                LazyVGrid(columns: adaptiveColumn, spacing: 5){
                    
                    
                    if(userPlayerToggle){
                        //user players
                        ForEach(userPlayers.list){ player in
                            
                            VStack{
                                
                                UserPlayerCard(userPlayer: player)
                                HStack{
                                    
                                    //DELETE BUTTON
                                    Button {
                                        userPlayers.deleteData(userPlayerToDelete: player)
                                    }
                                label: {
                                    Image(systemName: "trash")
                                        .foregroundColor(.red)
                                }
                                .accessibilityIdentifier("deletePlayerButton")
                                .padding(.trailing,30)
                                        .padding(.top,3)
                                    
                                    
                                    //EDIT BUTTON
                                    Button {
                                        showingEditView = true
                                    }
                                label: {
                                    Image(systemName: "pencil")
                                        .foregroundColor(.blue)
                                }.padding(.trailing,30)
                                        .padding(.top,3)
                                    
                                }
                                .accessibilityIdentifier("editPlayerButton")
                                .sheet(isPresented: $showingEditView, content: {
                                    
                                    //TODO: MAKE EDIT WORK PROPERLY
                                    EditPlayerForm(userPlayerToEdit: player)
                                })
                            }
                            .frame(width: 140,height: 185)
                            .padding(20)
                            .border(Color(.black))
                            
                        }//end of loop
                    }
                    
                    if(playerToggle){
                        ForEach(vm.players){ player in
                            
                            if( searchText == ""){
                                
                                    PlayerCard(rank:player.id,
                                               name:player.name,
                                               country:player.country,
                                               flag:player.flag,
                                               elo:player.elo,
                                               birthYear:player.birthyear,
                                               profile: player.profile)
                            }else{
                                if(player.name.contains(searchText)){
                                    PlayerCard(rank:player.id,
                                               name:player.name,
                                               country:player.country,
                                               flag:player.flag,
                                               elo:player.elo,
                                               birthYear:player.birthyear,
                                               profile: player.profile)
                                }

                            }
                            
                            
                        }//end of loop
                    }
                }
                
            }
            .navigationTitle("Players")
            
            //create
            .navigationBarItems(trailing:
                                    Button(action:{
                showingCreateView = true
                
            }){
                Image(systemName: "person.crop.circle.fill.badge.plus")
                    .font(.title)
            }
                .sheet(isPresented: $showingCreateView) {
                    CreateNewPlayerForm(errorMsg: "")
                })
            .accessibilityIdentifier("navBarCreateNewPlayer")
        }
        
    }
}

struct PlayerListView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerListView()
    }
}
