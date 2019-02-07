//
//  ViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/07.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dynamicStackView: DynamicStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedAdd(_ sender: Any) {
        let cell = MyStackViewCell(image: UIImage(named: "sweets_icecream_3dan")!, text: "アイス")
        cell.automatic = true
        dynamicStackView.addCell(cell: cell)
    }
    
    @IBAction func tappedRemove(_ sender: Any) {
        dynamicStackView.removeLastCell()
    }
}

