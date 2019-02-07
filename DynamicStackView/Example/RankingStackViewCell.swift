//
//  RankingStackViewCell.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/07.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class RankingStackViewCell: DynamicStackViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var rank:Int = 0 {
        didSet {
            label.text = String(rank)
        }
    }
    
    convenience init(rank:Int) {
        self.init(frame: CGRect(x: 0, y: 0, width: 1, height: 1))
        
        imageView.layer.cornerRadius = imageView.frame.width/2.0
        imageView.clipsToBounds = true
        self.rank = rank
    }

}
