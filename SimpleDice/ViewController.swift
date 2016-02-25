//
//  ViewController.swift
//  SimpleDice
//
//  Created by JOE KAWAI on 22/2/16.
//  Copyright © 2016 TeamKarbon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Number of dice
    var NoOfDice = 1
    // To display number on dice
    @IBOutlet weak var labelResult: UILabel!
    // Raw Data of number of dice chosen
    @IBOutlet weak var rawNoOfDice: UISegmentedControl!
    
    // Button roll dice listener
    @IBAction func buttonRollListener(sender: AnyObject) {
        let diceRoll = Int(arc4random_uniform(diceRange(NoOfDice))) + NoOfDice
        labelResult.text = String(diceRoll)
    }
    
    // Get number of dice
    @IBAction func updateNoOfDice(sender: AnyObject) {
        NoOfDice = rawNoOfDice.selectedSegmentIndex + 1
    }
    
    // Getting Maximum number for the dice & converting UInt32
    func diceRange(NoOfDice: Int) -> UInt32 {
        return UInt32((NoOfDice * 6) - (NoOfDice - 1))
    }
    
}

