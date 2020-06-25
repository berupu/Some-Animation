//
//  ViewController.swift
//  Menu Button Animation
//
//  Created by be RUPU on 21/6/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menu: UIButton!
    @IBOutlet weak var firstMenu: UIButton!
    @IBOutlet weak var secondMenu: UIButton!
    @IBOutlet weak var thirdMenu: UIButton!
    
    var firstMenuCenter : CGPoint!
    var secodMenuCenter : CGPoint!
    var thirdMenuCenter : CGPoint!
    
    var menuOpen = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstMenuCenter = firstMenu.center
        secodMenuCenter = secondMenu.center
        thirdMenuCenter = thirdMenu.center

        firstMenu.center = menu.center
        secondMenu.center = menu.center
        thirdMenu.center = menu.center
        
        firstMenu.alpha  = 0
        secondMenu.alpha = 0
        thirdMenu.alpha  = 0
    }
    
    
    @IBAction func menuButtonPressed(_ sender: UIButton) {
    
        menuOpen = !menuOpen
        
        if menuOpen {
            
            UIView.animate(withDuration: 0.6, animations: {
                self.firstMenu.alpha  = 1
                self.secondMenu.alpha = 1
                self.thirdMenu.alpha  = 1
                self.firstMenu.center = self.firstMenuCenter
                self.secondMenu.center = self.secodMenuCenter
                self.thirdMenu.center = self.thirdMenuCenter
                })
            }else {
            
            UIView.animate(withDuration: 0.6, animations: {
                self.firstMenu.center = self.menu.center
                self.secondMenu.center = self.menu.center
                self.thirdMenu.center = self.menu.center
            }) { (true) in
                self.firstMenu.alpha  = 0
                self.secondMenu.alpha = 0
                self.thirdMenu.alpha  = 0
            }
        
            
        }
   }
    
    
}

