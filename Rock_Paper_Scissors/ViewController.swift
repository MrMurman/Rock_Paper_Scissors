//
//  ViewController.swift
//  Rock_Paper_Scissors
//
//  Created by Андрей Бородкин on 10.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appSignLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var leftSignBTN: UIButton!
    @IBOutlet weak var centerSignBTN: UIButton!
    @IBOutlet weak var rightSignBTN: UIButton!
    
    @IBOutlet weak var playAgainBTN: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        updateUI(gameState: .start)
    }

    
    func updateUI(gameState: GameState) {
        
        statusLabel.text = gameState.labelText
        
        switch gameState {
        case .start:
            view.backgroundColor = UIColor.cyan
            appSignLabel.text = "🤖"
            
            updateBTN(activeBTNs: leftSignBTN, centerSignBTN, rightSignBTN)
            
            
        case .win:
            view.backgroundColor = UIColor.green
        case .lose:
            view.backgroundColor = UIColor.red
        case .draw:
            view.backgroundColor = UIColor.yellow
        }
    }
    
    
    func play(sign: Sign) {
        let appSign = randomSign()
        updateUI(gameState: sign.doesItBeat(anotherSign: appSign))
        appSignLabel.text = appSign.emoji

        switch sign {
        case .rock:
            updateBTN(activeBTNs: playAgainBTN, leftSignBTN)
        case .paper:
            updateBTN(activeBTNs: playAgainBTN, centerSignBTN)
        case .scissors:
            updateBTN(activeBTNs: playAgainBTN, rightSignBTN)
        }
    }
    
    
    func updateBTN(activeBTNs: UIButton...) {
        let allBTNs = [leftSignBTN, centerSignBTN, rightSignBTN, playAgainBTN]
        for button in allBTNs {
            button?.isHidden = true
        }
        for BTN in activeBTNs {
            BTN.isHidden = false
        }
    
        
    }
    
    @IBAction func leftSignBTNPressed(_ sender: UIButton) {
        play(sign: .rock)
    }
    
    @IBAction func centerSignBTNPressed(_ sender: UIButton) {
        play(sign: .paper)
    }
    
    @IBAction func rightSignBTNPressed(_ sender: UIButton) {
        play(sign: .scissors)
    }
    
    @IBAction func playAgainBTNPressed(_ sender: UIButton) {
        updateUI(gameState: .start)
    }
    
}

