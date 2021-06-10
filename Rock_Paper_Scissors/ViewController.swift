//
//  ViewController.swift
//  Rock_Paper_Scissors
//
//  Created by Андрей Бородкин on 10.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    
    @IBOutlet weak var leftSignBTN: UIButton!
    @IBOutlet weak var centerSignBTN: UIButton!
    @IBOutlet weak var rightSignBTN: UIButton!
    
    @IBOutlet weak var playAgainBTN: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func updateUI(gameState: GameState) {
        
    }
    
    
    @IBAction func leftSignBTNPressed(_ sender: UIButton) {
    }
    
    @IBAction func centerSignBTNPressed(_ sender: UIButton) {
    }
    
    @IBAction func rightSignBTNPressed(_ sender: UIButton) {
    }
    
    @IBAction func playAgainBTNPressed(_ sender: UIButton) {
    }
    
}

