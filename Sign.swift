//
//  Sign.swift
//  Rock_Paper_Scissors
//
//  Created by Андрей Бородкин on 10.06.2021.
//

import Foundation
import UIKit


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
        
        if self == anotherSign {
            return .draw
        }
        
        switch anotherSign {
        case .rock:
            return self == .paper ? .win : .lose

        case .paper:
            return self == .scissors ? .win : .lose

        case .scissors:
            return self == .rock ? .win : .lose
            

        }
        
    }
    
   
    
    
}


