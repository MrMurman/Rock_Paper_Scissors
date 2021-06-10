//
//  GameState.swift
//  Rock_Paper_Scissors
//
//  Created by Андрей Бородкин on 10.06.2021.
//

import Foundation

enum GameState {
    case start, win, lose, draw
    
    var labelText: String {
        switch self {
        case .start:
            return "Game started"
        case .win:
            return "You won!"
        case .lose:
            return "You lost. Maybe next time"
        case .draw:
            return "Wow, what a surprise. Another round!"
        }
    }
    
}
