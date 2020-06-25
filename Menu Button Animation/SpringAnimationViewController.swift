//
//  SpringAnimationViewController.swift
//  Menu Button Animation
//
//  Created by be RUPU on 23/6/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class SpringAnimationViewController: UIViewController {
    
    @IBOutlet weak var popUp: UIView!
    @IBOutlet weak var switchButton: UISwitch!
    var originalCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUp.alpha = 0
        originalCenter = popUp.center

    }
    
    @IBAction func fireButton(_ sender: UIButton) {
        
        if switchButton.isOn {
            popUp.layer.anchorPoint = CGPoint(x: 0.5, y: 0)
            popUp.center.y = popUp.center.y - (popUp.frame.height / 2)
            popUp.transform = CGAffineTransform(rotationAngle: 1.8)

            
        }else {
            popUp.transform = CGAffineTransform(scaleX: 0.3, y: 0.2)
        }
        
        UIView.animate(withDuration: 1, delay: 0,usingSpringWithDamping: 0.3, initialSpringVelocity: 0,options: .allowUserInteraction, animations: {
            
            self.popUp.transform = .identity
            
        }) { (true) in
            self.popUp.center = self.originalCenter
            self.popUp.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        }
        
        popUp.alpha = 1
    }
    
    

    @IBAction func ok(_ sender: UIButton) {
        popUp.alpha = 0
    }
    
}
