//
//  StackTableViewCell.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/13.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class StackTableViewCell: UITableViewCell {
    
    @IBOutlet weak var topVIew: UIView!
    @IBOutlet weak var bottomView: UIView!
    
    var tappedAction:(() -> Void)?
    
    @IBAction func tappedButton(_ sender: Any) {
        tappedAction?()
    }
}
