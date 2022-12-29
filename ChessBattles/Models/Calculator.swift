//
//  Calculator.swift
//  ChessBattles
//
//  Created by Frederic Lefebvre on 2022-11-25.
//

import Foundation
import Darwin


class Calculator:ObservableObject{
    
    @Published var aName:String = ""
    @Published var aElo:Int = 0
    @Published var bName:String = ""
    @Published var bElo:Int = 0
    
    @Published var names: [String] = ["","","","","","","",""]
    @Published var elos: [Int] = [0,0,0,0,0,0,0,0]
    
    
    func versusCalculate() -> String{
        
        var pct:Double = 1 - 1 / (1 + pow(10, (Double(aElo-bElo))/400))
        
        var odds = pct * 10000 / 100
        var s = "\(aName), rated \(aElo) has \(round(odds * 10)/10.0)% chance of winning against \(bName) rated \(bElo)"
        
        if(aName == "" || bName == ""){
            return "please select two players"
        }
        return s
    }
    
    func commonElementsInArray(stringArray: [String]) -> String {
        let dict = Dictionary(grouping: stringArray, by: {$0})
        let newDict = dict.mapValues({$0.count})
        return newDict.sorted(by: {$0.value > $1.value}).first?.key ?? ""
    }
    
    func tournamentCalculate() -> String{
        
        var winners: [String] = []
        for i in 0...10{
            for i in 0...7{
                for j in 0...7{
                    if(i != j){
                        var p:Double = 1 - 1 / (1 + pow(10, (Double(elos[i]-elos[j]))/400))
                        var odds = p * 10000 / 100
                        if(odds>50){
                            winners.append(names[i])
                        }else{
                            winners.append(names[j])
                        }
                    }
                }
            }
        }
        
        var a = winners.filter{$0 == commonElementsInArray(stringArray: winners)}.count
        var b = winners.count
        var c = Double(a)/Double(b)
        c = c * 100
        var s = "\(commonElementsInArray(stringArray: winners)) has \(round(c * 10)/10)% chance to win the tournament"
        
        if(names[0] == "" || names[1] == "" || names[2] == "" || names[3] == "" || names[4] == "" || names[5] == "" || names[6] == "" || names[7] == ""){
            return "please select 8 players"
        }else{
            return s
        }
    }
    
}
