//
//  UserPlayers.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-09.
//

import Foundation

struct UserPlayers: Identifiable, Codable{
    
    var id:String = ""
    var birthyear:String = ""
    var country:String = ""
    var name:String = ""
    var rating:String = ""
    
    init(){}
    
    init(id:String,name:String,rating:String,birthyear:String, country:String){
        self.id = id
        self.name = name
        self.rating = rating
        self.birthyear = birthyear
        self.country = country
    }
}
