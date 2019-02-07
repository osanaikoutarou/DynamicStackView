//
//  HorizontalViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/07.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class HorizontalViewController: UIViewController {

    @IBOutlet weak var dynamicStackView: DynamicStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedAdd(_ sender: Any) {
        let cell = RankingStackViewCell(rank: dynamicStackView.cells.count + 1)
        cell.setAxis(axis: .horizontal)
        cell.width = 100.0
        dynamicStackView.addCell(cell: cell)
    }
}
