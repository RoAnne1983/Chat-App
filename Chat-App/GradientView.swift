//
//  GradientView.swift
//  Chat-App
//
//  Created by anne Ortiz on 1/10/19.
//  Copyright © 2019 anne Ortiz. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2705882353, green: 0.4078431373, blue: 0.862745098, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.6901960784, green: 0.4156862745, blue: 0.7019607843, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x:0, y:0)
        gradientLayer.endPoint = CGPoint(x:1, y:1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
