//
//  ViewController.swift
//  Tapper Extreme
//
//  Created by Matt Wittenborn on 3/15/16.
//  Copyright © 2016 Free the Gamer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var howManyTapsLabel: UITextField!
    @IBOutlet weak var playButton:  UIButton!
    
    @IBOutlet weak var tapsLabel:  UILabel!
    @IBOutlet weak var tapsButton:  UIButton!
    
    @IBAction func onStarTapped(sender:  UIButton) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {

        
        if howManyTapsLabel.text != nil && howManyTapsLabel != "" {
            
            logo.hidden = true
            playButton.hidden = true
            howManyTapsLabel.hidden = true
            
            tapsButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsLabel.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsLabel.text = ""
        
        logo.hidden = false
        playButton.hidden = false
        howManyTapsLabel.hidden = false
        
        tapsButton.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        tapsLabel.text = "\(currentTaps) Taps"
    }

}

