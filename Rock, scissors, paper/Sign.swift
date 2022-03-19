//
//  Sign.swift
//  Rock, scissors, paper
//
//  Created by Алексей Попроцкий on 19.03.2022.
//

import Foundation
import GameKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    switch sign {
        case 0:
            return .paper
        case 1:
            return .rock
        default:
            return .scissors
    }
}

enum Sign {
    case paper, rock, scissors
    
    var emoji: String {
        switch self {
            case .paper:
                return "🖐"
            case .rock:
                return "👊"
            case .scissors:
                return "✌️"
        }
    }
    
}


