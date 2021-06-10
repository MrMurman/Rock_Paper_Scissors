//
//  Sign.swift
//  Rock_Paper_Scissors
//
//  Created by Андрей Бородкин on 10.06.2021.
//

import Foundation


func randomSign() -> Sign {
    return Sign.init(rawValue: Int.random(in: 1...3))!
}

enum Sign: Int {
    case rock = 1, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
           return "✊"
        case .paper:
            return "🖐"
        case .scissors:
          return "✌️"
        }
    }
    
   
    func doesItBeat(anotherSign: Sign) -> GameState {
        
        switch anotherSign {
        case .rock:
            if self == .rock {
                return .draw
            } else if self == .paper {
                return .win
            } else {
                return .lose
            }
        case .paper:
            if self == .rock {
                return .lose
            } else if self == .paper {
                return .draw
            } else {
                return .win
            }
        case .scissors:
            if self == .rock {
                return .win
            } else if self == .paper {
                return .lose
            } else {
                return .draw
            }
        }
        
    }
    
   
    
    
}


