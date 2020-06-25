//
//  TransitionAnimationViewController.swift
//  Menu Button Animation
//
//  Created by be RUPU on 23/6/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class TransitionAnimationViewController: UIViewController {
    
    @IBOutlet weak var question: UIView!
    @IBOutlet weak var trash: RoundButton!
    @IBOutlet weak var answer: UIView!
    
    var isItFlip = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func flipButton(_ sender: UIButton) {
        
        isItFlip = !isItFlip
        
        let ansView  = isItFlip ? question : answer
        let quesView = isItFlip ? answer : question
        
        
        UIView.transition(from: ansView!, to: quesView!, duration: 1, options: [.transitionFlipFromRight, .showHideTransitionViews])
        
    }
    
    
       

}
