//
//  GameState.swift
//  Rock, scissors, paper
//
//  Created by Алексей Попроцкий on 19.03.2022.
//

import Foundation

enum GameState {
    case draw,
         win,
         lose
}

func resultGame (human: Sign, robot: Sign) -> GameState {
    switch (human, robot) {
        case (.rock, .rock), (.paper, .paper), (.scissors, .scissors):
            return .draw
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return .win
        default:
            return .lose
            
    }
}

