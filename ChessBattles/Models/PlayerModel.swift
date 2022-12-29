//
//  PlayerModel.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-07.
//

import Foundation

struct Player: Codable, Identifiable{
    
    /*
     {
     "ranking": "1",
     "name": "Carlsen, Magnus",
     "profile": "https://ratings.fide.com/profile/1503014",
     "country": "NOR",
     "flag": "https://ratings.fide.com/svg/NOR.svg",
     "elo": "2859",
     "birthyear": "1990"
     }
     */
    
    
    let id: Int
    let name: String
    let profile: String
    let country: String
    let flag: String
    let elo: String
    let birthyear: String
}
