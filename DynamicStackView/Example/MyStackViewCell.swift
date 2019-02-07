//
//  MyStackViewCell.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/07.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class MyStackViewCell: DynamicStackViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!

    convenience init(image: UIImage, text: String) {
        self.init(frame: CGRect(x: 0, y: 0, width: 1, height: 1))
        imageView.image = image
        label.text = text
    }
}
