//
//  bienvenido.swift
//  catalogo
//
//  Created by Macbook on 27/09/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class bienvenido: UIButton {
    override func awakeFromNib() {
        
        layer.cornerRadius = 9
        
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.90
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 5.0
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
        
        
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 6.5
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        
        flash.autoreverses = true
        flash.repeatCount = 3
        
        layer.add(flash, forKey: nil)
    }
    
    
}
