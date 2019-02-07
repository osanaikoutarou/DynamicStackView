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
    
    // optional
    var identifier: String?
    
    // for vertical
    var heightConstraint:NSLayoutConstraint?
    var height: CGFloat = 1.0 {
        didSet {
            if let heightConstraint = heightConstraint {
                contentView.removeConstraint(heightConstraint)
            }
            heightConstraint = contentView.heightAnchor.constraint(equalToConstant: height)
            heightConstraint?.isActive = true
        }
    }
    fileprivate var automaticHeight: Bool = false {
        didSet {
            heightConstraint?.isActive = !automaticHeight
        }
    }
    // for horizontal
    var widthConstraint:NSLayoutConstraint?
    var width: CGFloat = 1.0 {
        didSet {
            if let widthConstraint = widthConstraint {
                contentView.removeConstraint(widthConstraint)
            }
            widthConstraint = contentView.widthAnchor.constraint(equalToConstant: width)
            widthConstraint?.isActive = true
        }
    }
    fileprivate var automaticWidth: Bool = false {
        didSet {
            widthConstraint?.isActive = !automaticWidth
        }
    }
    
    var axis:NSLayoutConstraint.Axis = .vertical
    
    var automaticDimension: Bool {
        get {
            switch axis {
            case .horizontal:
                return automaticWidth
            case .vertical:
                return automaticHeight
            }
        }
        set {
            switch axis {
            case .horizontal:
                automaticWidth = newValue
            case .vertical:
                automaticHeight = newValue
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
        width = 1.0
    }
    
    func setAxis(axis: NSLayoutConstraint.Axis) {
        self.axis = axis
        // 不要な制約
        switch axis {
        case .horizontal:
            automaticHeight = true
        case .vertical:
            automaticWidth = true
        }
    }

    var view: DynamicStackViewCell {
        return self
    }
}
