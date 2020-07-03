//
//  GestureRecognizerViewController.swift
//  MyWork
//
//  Created by be RUPU on 3/7/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class GestureRecognizerViewController: UIViewController {
    
// Button from ViewController.swift
    
    @IBAction func handlePan(_ recognizer: UIPanGestureRecognizer){
        
        guard let recognizerView = recognizer.view else {
            return
        }
        
        let translation = recognizer.translation(in: view)
        recognizerView.center.x += translation.x
        recognizerView.center.y += translation.y
        recognizer.setTranslation(.zero, in: view)
    
        
    }


}
