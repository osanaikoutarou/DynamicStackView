//
//  List2TableViewCell.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/13.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class List2TableViewCell: UITableViewCell {

    @IBOutlet weak var dynamicStackView: DynamicStackView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let view1 = List2Cell(frame: CGRect(x: 0, y: 0, width: 1, height: 20))
        view1.height = 70.0
        view1.backgroundColor = .yellow
        
        let view2 = List2Cell(frame: CGRect(x: 0, y: 0, width: 1, height: 20))
        view2.height = 70.0
        view2.backgroundColor = .blue
        
        let view3 = List2Cell(frame: CGRect(x: 0, y: 0, width: 1, height: 20))
        view3.height = 70.0
        view3.backgroundColor = .orange

        dynamicStackView.addCell(cell: view1)
        view1.layoutIfNeeded()
        dynamicStackView.addCell(cell: view2)
        view2.layoutIfNeeded()
        dynamicStackView.addCell(cell: view3)
        view3.layoutIfNeeded()
        
        update()
    }
    
    func update() {
        heightConstraint.constant = dynamicStackView.expectedHeight()
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        
        UIView.animate(withDuration: 1.5, animations: {
            self.heightConstraint.constant = 50
            self.contentView.layoutIfNeeded()
        }, completion: nil)
    }
    
}
