//
//  SecondViewController.swift
//  Menu Button Animation
//
//  Created by be RUPU on 22/6/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var menu: UIView!
    @IBOutlet weak var upButton: RoundButton!
    @IBOutlet weak var darkFill: RoundImage!
    @IBOutlet weak var fly: RoundButton!
    @IBOutlet weak var weed: RoundButton!
    @IBOutlet weak var sleep: RoundButton!
    @IBOutlet weak var eat: RoundButton!
    
    var speed = true

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func upButtonPressed(_ sender: RoundButton) {
        if darkFill.transform == .identity{
            UIView.animate(withDuration: 1, animations: {
            self.darkFill.transform = CGAffineTransform(scaleX: 11, y: 11)
            self.menu.transform     = CGAffineTransform(translationX: 0, y: -50)
            self.upButton.transform = CGAffineTransform(rotationAngle: self.radians(180))
            
            
            
        }) { (true) in
            self.smallButtonCircle()
        }
        }else{
            UIView.animate(withDuration: 1, animations: {
                self.darkFill.transform = .identity
                self.menu.transform     = .identity
                self.upButton.transform = .identity
            }) { (true) in
                
            }
        }
    }
    
    func radians(_ degress: Double) -> CGFloat {
//        print(degress * .pi / degress)
        return CGFloat(degress * .pi / degress)
        
    }
    
    func smallButtonCircle(){
        UIView.animate(withDuration: 1, animations: {
            self.eat.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.eat.transform = .identity
            self.sleep.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.sleep.transform = .identity
            self.weed.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.weed.transform = .identity
            self.fly.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.fly.transform = .identity
                  
            self.eat.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.eat.transform = .identity
            self.sleep.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.sleep.transform = .identity
            self.weed.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.weed.transform = .identity
            self.fly.transform = CGAffineTransform(rotationAngle: self.radians(180))
            self.fly.transform = .identity
        })
    }
}
