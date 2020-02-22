//
//  CircButton.swift
//  Team.Squanto
//
//  Created by Hardik Mistry on 11/11/16.
//  Copyright © 2016 Team.Squanto.Capstone. All rights reserved.
//

import UIKit

@IBDesignable
class CircButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet{
            setupView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView() {
        layer.cornerRadius = cornerRadius
    }
}
