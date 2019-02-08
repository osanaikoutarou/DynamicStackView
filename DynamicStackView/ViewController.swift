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
    @IBOutlet weak var header: DynamicVerticalStackViewCell!
    @IBOutlet weak var footer: DynamicVerticalStackViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        dynamicStackView.addHeader(header: header)
//        dynamicStackView.addFooter(footer: footer)
    }

    @IBAction func tappedAdd1(_ sender: Any) {
        let cell = MyStackViewCell(image: UIImage(named: "sweets_icecream_3dan")!, text: "アイス")
        cell.automaticDimension = true
        cell.closeAction = {
            self.dynamicStackView.removeCell(cell: cell)
        }
        dynamicStackView.addCell(cell: cell)
    }
    @IBAction func tappedAdd2(_ sender: Any) {
        let cell = MyStackViewCell(image: UIImage(named: "character_turtle_oyako_mago")!, text: "かめ")
        cell.automaticDimension = true
        cell.closeAction = {
            self.dynamicStackView.removeCell(cell: cell)
        }
        dynamicStackView.addCell(cell: cell)
    }
    @IBAction func tappedAdd3(_ sender: Any) {
        let cell = MyStackViewCell(image: UIImage(named: "snowman_yukidaruma_sandan")!, text: "スノーマン")
        cell.automaticDimension = true
        cell.closeAction = {
            self.dynamicStackView.removeCell(cell: cell)
        }
        dynamicStackView.addCell(cell: cell)
    }
    
    @IBAction func tappedRemove(_ sender: Any) {
        dynamicStackView.removeLastCell()
    }
}

