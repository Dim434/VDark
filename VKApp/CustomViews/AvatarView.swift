//
//  AvatarView.swift
//  VKApp
//
//  Created by Dmitry on 30.08.2020.
//  Copyright © 2020 g4play. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class AvatarView : UIControl{
    var imageView : UIImageView!
    @IBInspectable var shadowWidth : CGFloat = 1 {
        didSet{
            setNeedsDisplay()
        }
    }
    @IBInspectable var shadowColor : UIColor = .black {
        didSet{
            setNeedsDisplay()
        }
    }
    @IBInspectable var shadowOpacity : Float = 0.1 {
        didSet{
            setNeedsDisplay()
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setImage(_ image : UIImage){
        setShadow()
        imageView  = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.width - 5, height: frame.width - 5))
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = image
        imageView.center = center
        let mask = CAShapeLayer()
        mask.path = UIBezierPath(ovalIn: imageView.bounds).cgPath
        imageView.layer.mask = mask
        addSubview(imageView)
    }
    private func setShadow(){
        let shadow: UIView = UIView(frame: CGRect(x: 0, y: 0, width: frame.width - 5, height: frame.height - 5))
        let mask = CAShapeLayer()
        shadow.center = center
        shadow.frame = CGRect(x: shadow.frame.minX + 2.5, y: shadow.frame.minY + 2.5, width: frame.width - 5, height: frame.height - 5)
        mask.path = UIBezierPath(ovalIn: shadow.bounds).cgPath
        shadow.layer.mask = mask
        shadow.layer.shadowColor = shadowColor.cgColor
        shadow.layer.shadowOpacity = shadowOpacity
        shadow.layer.shadowRadius = shadowWidth
        shadow.layer.shadowOffset = .zero
        shadow.layer.shadowPath = mask.path
        addSubview(shadow)
    }
}
