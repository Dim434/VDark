//
//  LikeControl.swift
//  VKApp
//
//  Created by Dmitry on 30.08.2020.
//  Copyright © 2020 g4play. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class LikeControl : UIControl{
    var likesCount : Int = 0
    var isLiked : Bool = false
    var button : UIButton!
    var label : UILabel!
    var stackView: UIStackView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupView()
    }
    func setupView(){
        label = UILabel()
        label.text =  "\(likesCount)"
        button = UIButton(type: .system)
        button.setImage(UIImage(named: "heart"), for: .normal)
        button.addTarget(self, action: #selector(like), for: .touchUpInside)
        stackView = UIStackView(arrangedSubviews: [label, button])
        self.addSubview(stackView)
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
    }
    @objc func like(){
        if isLiked{
            likesCount -= 1
            button.setImage(UIImage(named: "heart"), for: .normal)
        }
        else{
            likesCount += 1
            button.setImage(UIImage(named: "heart-1"), for: .normal)
        }
        label.text = "\(likesCount)"
        isLiked.toggle()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = bounds
    }
}
