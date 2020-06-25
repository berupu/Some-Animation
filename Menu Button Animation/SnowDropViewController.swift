//
//  SnowDropViewController.swift
//  Menu Button Animation
//
//  Created by be RUPU on 25/6/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class SnowDropViewController: UIViewController {
    @IBOutlet weak var eLabel: UILabel!
    @IBOutlet weak var oLabel: UILabel!
    
    @IBOutlet weak var b: UIImageView!  //drib
    @IBOutlet weak var e: UIImageView!  //b
    @IBOutlet weak var r: UIImageView!  //ble
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setStartPosition()
        separatebeRUPU()

        snowBalls()
    }
    
    func setStartPosition() {
        
        let xOffset = e.frame.width / 2
        b.transform = CGAffineTransform(translationX: xOffset, y: 0)
          let y = -(view.frame.height)
//        let y = -(e.frame.origin.y + b.frame.height + 50)
        e.transform = CGAffineTransform(translationX: 0, y: y).scaledBy(x: 0.7, y: 2)
        r.transform = CGAffineTransform(translationX: -xOffset, y: 0)
    }
    
    func separatebeRUPU(){
        UIView.animate(withDuration: 0.4, delay: 2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
//            self.b.transform = CGAffineTransform(scaleX: 0.8, y: 1.2)
//            self.r.transform = CGAffineTransform(scaleX: 0.8, y: 1.2)
            self.b.transform = .identity
            self.r.transform = .identity

        }) { (success) in
            self.showE()
        }
    }
    
    func showE(){
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: -10, options: [.curveEaseOut], animations: {
            self.e.transform = .identity
        }) { (true) in
            self.winkHello()
        }
    }
    
    func winkHello(){
        UIView.animate(withDuration: 0.2, animations: {
            self.eLabel.transform = CGAffineTransform(scaleX: 1, y: 0.2)
            self.oLabel.transform = CGAffineTransform(scaleX: 1, y: 0.2)
        }) { (true) in
            UIView.animate(withDuration: 0.2, animations: {
                self.eLabel.transform = .identity
                self.oLabel.transform = .identity
            }) { (true) in
                self.snowBalls()
            }
        }
    }

    func snowBalls(){
        
        let emitter = get(with: UIImage(named: "snow")!)
        
        //where the snow will come from
        emitter.emitterPosition = CGPoint(x: view.frame.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.width, height: 2)
        view.layer.addSublayer(emitter)
        
    }
    
    func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        
        //how snow will drop
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterCells = generateEmitterCells(with: image)
        
        return emitter
    }
    
    func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
    
        var cells = [CAEmitterCell]()
        
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 1 // birth per second
        cell.lifetime = 50  //second
        cell.velocity = CGFloat(25)  //snow speed
        cell.emissionLongitude = (180 * (.pi/180))  // snow droping angle = down
        cell.emissionRange = (45 * (.pi/180))  // 2nd snow droping angle. It will also drop frome another angle
        
        //snow will scale to small or big to small
        cell.scale = 0.4
        cell.scaleRange = 0.3
        
        
        cells.append(cell)
    
        
        return cells
    }

}
