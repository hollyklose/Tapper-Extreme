//
//  ViewController.swift
//  Tapper-Extreme!
//
//  Created by Holly Klose on 1/31/16.
//  Copyright © 2016 Holly Klose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps = 0
    var currentTaps = 0

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var numberTapsLabel: UILabel!
    
    @IBAction func onCoinTapped (sender: UIButton!) {
        
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
            
            
        }
        
    }
    
    
    @IBAction func onPlayBtnPressed (Sender: UIButton) {
        
        
        
        if textField.text != nil && textField.text != "" {
            
            logoImage.hidden = true
            playButton.hidden = true
            textField.hidden = true
            coinButton.hidden = false
            numberTapsLabel.hidden = false
            
            maxTaps = Int(textField.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
            
        }
        
        
    }
    
    
    func restartGame () {
        maxTaps = 0
        textField.text = ""
        
        logoImage.hidden = false
        playButton.hidden = false
        textField.hidden = false
        
        coinButton.hidden = true
        numberTapsLabel.hidden = true
        
        
    }
    
    
    func isGameOver () ->Bool {
        if currentTaps >= maxTaps {
            return true
        }
        else {
            return false
        }
        
    }
    
    func updateTapsLabel () {
        numberTapsLabel.text = "\(currentTaps) Taps"
    }
    

}

