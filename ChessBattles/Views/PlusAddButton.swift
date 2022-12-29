//
//  PlusAddButton.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-12-08.
//

import SwiftUI

struct PlusAddButton: View {
    
    @EnvironmentObject var calculator:Calculator
    var playerName:String = ""
    var playerElo:String = "2"
    var position: Int = 1
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        Button {
            //GIVE TO THE CALCULATOR
            presentationMode.wrappedValue.dismiss()

            switch position{
            case 1:
                calculator.aName = playerName
                calculator.aElo = Int(playerElo)!
            case 2:
                calculator.bName = playerName
                calculator.bElo = Int(playerElo)!
            case 3:
                calculator.names[0] = playerName
                calculator.elos[0] = Int(playerElo)!
            case 4:
                calculator.names[1] = playerName
                calculator.elos[1] = Int(playerElo)!
            case 5:
                calculator.names[2] = playerName
                calculator.elos[2] = Int(playerElo)!
            case 6:
                calculator.names[3] = playerName
                calculator.elos[3] = Int(playerElo)!
            case 7:
                calculator.names[4] = playerName
                calculator.elos[4] = Int(playerElo)!
            case 8:
                calculator.names[5] = playerName
                calculator.elos[5] = Int(playerElo)!
            case 9:
                calculator.names[6] = playerName
                calculator.elos[6] = Int(playerElo)!
            case 10:
                calculator.names[7] = playerName
                calculator.elos[7] = Int(playerElo)!
            default:
                print("nothing")

                
            
            
            }            
        } label: {
            Image(systemName: "plus.rectangle")
        }
        
    }
}

struct PlusAddButton_Previews: PreviewProvider {
    static var previews: some View {
        PlusAddButton(playerName:"", playerElo:"",position:0)
    }
}
