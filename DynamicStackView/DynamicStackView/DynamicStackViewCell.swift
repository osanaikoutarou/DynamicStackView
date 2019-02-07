//
//  DynamicStackViewCell.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/07.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class DynamicStackViewCell: UIView {
    var contentView: UIView!
    
    var heightConstraint: NSLayoutConstraint?
    var height: CGFloat = 1.0 {
        didSet {
            heightConstraint = contentView.heightAnchor.constraint(equalToConstant: height)
        }
    }
    var automatic: Bool = false {
        didSet {
            if let heightConstraint = heightConstraint, automatic {
                removeConstraint(heightConstraint)
            }
            if heightConstraint == nil && !automatic {
                heightConstraint = contentView.heightAnchor.constraint(equalToConstant: height)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        let className = String(describing: type(of: self))
        contentView = Bundle.main.loadNibNamed(className, owner: self, options: nil)?.first as? UIView
        addSubview(contentView)
        contentView.frame = self.frame
        
        self.addConstraints(
            NSLayoutConstraint.constraints(
                withVisualFormat: "H:|-0-[contentView]-0-|",
                options: .directionLeadingToTrailing,
                metrics: nil,
                views: ["contentView": contentView]))
        self.addConstraints(
            NSLayoutConstraint.constraints(
                withVisualFormat: "V:|-0-[contentView]-0-|",
                options: .directionLeadingToTrailing,
                metrics: nil,
                views: ["contentView": contentView]))
        
        height = 1.0
    }

    var view: DynamicStackViewCell {
        
        return self
    }
}
