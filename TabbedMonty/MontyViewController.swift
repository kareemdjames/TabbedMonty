//
//  MontyViewController.swift
//  TabbedMonty
//
//  Created by The TEAM on 9/16/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class MontyViewController: UIViewController {
    
    @IBOutlet weak var labelOutcome: UILabel!
    
    let engine = MontyBrain(numSquares: 3, numSpots: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        engine.setupSquares()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        labelOutcome.text = sender.currentTitle
        
        if engine.checkSquare(sender.tag - 1) {
            labelOutcome.text = "Correct!"
            engine.setupSquares()
        }
        else {
            labelOutcome.text = "WRONG"
        }
    }
}
