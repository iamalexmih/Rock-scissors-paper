//
//  ViewController.swift
//  Rock, scissors, paper
//
//  Created by Алексей Попроцкий on 19.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        labelPlayAgain.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    
    func play(_ humanSign: Sign) {
        
        let robotSign = randomSign()
        
        let result = resultGame(human: humanSign, robot: robotSign)
        
        labelRobot.text = robotSign.emoji
        
        //Этот switch в зависимости от значения resultGame Меняет статус игры. Можно добавить смену цвета фона.
        
        switch result {
            case .draw:
                labelGameState.text = "DRAW"
            case .win:
                labelGameState.text = "WIN"
            case .lose:
                labelGameState.text = "LOSE"
        }
        
        //Этот switch Скрывает кнопки человека.
        
        switch humanSign {
        case .scissors:
                labelPaper.isHidden = true
                labelRock.isHidden = true
                labelScissors.isHidden = false
        case .rock:
                labelPaper.isHidden = true
                labelRock.isHidden = false
                labelScissors.isHidden = true
        case .paper:
                labelPaper.isHidden = false
                labelRock.isHidden = true
                labelScissors.isHidden = true
        }
        
        //Включает показывать кнопку Play Again. Отключает повторное нажатие кнопок человека.
        
        labelPlayAgain.isHidden = false
        
        labelPaper.isEnabled = false
        labelRock.isEnabled = false
        labelScissors.isEnabled = false
    }
    
    func resetForPlayAgain() {
        
        //Отобразить все кнопки, и скрыть play again.
        
        labelRock.isHidden = false
        labelScissors.isHidden = false
        labelPaper.isHidden = false
        
       labelPlayAgain.isHidden = true
        
        labelRobot.text = "🤖"
        labelGameState.text = "Rock, Scissors, Paper"
        
        //Включить нажатие всех кнопок.
        
        labelPaper.isEnabled = true
        labelRock.isEnabled = true
        labelScissors.isEnabled = true
    }
    
    //MARK: All Label IBOutlet
    
    @IBOutlet weak var labelRobot: UILabel!
    @IBOutlet weak var labelGameState: UILabel!
    
    @IBOutlet weak var labelPaper: UIButton!
    @IBOutlet weak var labelRock: UIButton!
    @IBOutlet weak var labelScissors: UIButton!
    
    @IBOutlet weak var labelPlayAgain: UIButton!
    
    //MARK: All Button IBAction
    
    @IBAction func buttonPlayAgain(_ sender: UIButton) {
        resetForPlayAgain()
    }
    
    @IBAction func buttonPaper(_ sender: UIButton) {
        play(.paper)
    }
    
    @IBAction func buttonRock(_ sender: UIButton) {
        play(.rock)
    }
    
    @IBAction func buttonScissors(_ sender: UIButton) {
        play(.scissors)
    }

    
}

