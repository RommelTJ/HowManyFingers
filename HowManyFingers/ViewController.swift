//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Rommel Rico on 2/23/15.
//  Copyright (c) 2015 Rommel Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func doGuessButton(sender: AnyObject) {
        var random = arc4random_uniform(6)
        var guessInt = myTextField.text.toInt()
        if (guessInt != nil) {
            if (guessInt == Int(random)) {
                myLabel.text = "Correct! My number was \(guessInt!)"
            } else {
                myLabel.text = "Incorrect. Try again."
            }
        } else {
            myLabel.text = "Please enter a number 0 to 5."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

