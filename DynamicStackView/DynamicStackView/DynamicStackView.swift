//
//  DynamicStackView.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/07.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class DynamicStackView: UIStackView {
    var cells:[DynamicStackViewCell] = []
    
    func addCell(cell:DynamicStackViewCell) {
        self.addArrangedSubview(cell)
    }
}
