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

    @IBAction func tappedAdd1(_ sender: Any) {
        let cell = MyStackViewCell(image: UIImage(named: "sweets_icecream_3dan")!, text: "アイス")
        cell.automatic = true
        cell.closeAction = {
            self.dynamicStackView.removeCell(cell: cell)
        }
        dynamicStackView.addCell(cell: cell)
    }
    @IBAction func tappedAdd2(_ sender: Any) {
        let cell = MyStackViewCell(image: UIImage(named: "character_turtle_oyako_mago")!, text: "かめ")
        cell.automatic = true
        cell.closeAction = {
            self.dynamicStackView.removeCell(cell: cell)
        }
        dynamicStackView.addCell(cell: cell)
    }
    @IBAction func tappedAdd3(_ sender: Any) {
                print("a")
        let cell = MyStackViewCell(image: UIImage(named: "snowman_yukidaruma_sandan")!, text: "スノーマン")
        cell.automatic = true
                print("|")
        cell.closeAction = {
            self.dynamicStackView.removeCell(cell: cell)
        }
                print("_")
        dynamicStackView.addCell(cell: cell)
        print(".")
    }
    
    @IBAction func tappedRemove(_ sender: Any) {
        dynamicStackView.removeLastCell()
    }
}

