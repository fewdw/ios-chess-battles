//
//  PlayerViewModel.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-07.
//

import Foundation

final class PlayerViewModel: ObservableObject{
    
    @Published var players: [Player] = []
    
    func fetchPlayers(){
        
        let playerUrlString="https://fewdw.github.io/Data/chess.json"
        if let url = URL(string: playerUrlString){
            
            URLSession
                .shared
                .dataTask(with: url){ [weak self] data, response, error in
                    
                    DispatchQueue.main.async {
                     
                        if let error = error{
                            //handle error
                            
                        } else{
                            
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            
                            if let data = data,
                               let players = try? decoder.decode([Player].self, from: data){
                                //handle setting data
                                
                                self?.players = players
                                
                            }else{
                                //handle error
                            }
                            
                        }
                        
                    }  
                }.resume()
        }
        
        
    }
}
