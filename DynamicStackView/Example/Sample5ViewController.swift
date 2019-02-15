//
//  Sample5ViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/15.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class Sample5ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        stackView.arrangedSubviews.forEach { $0.alpha = 0.5 }
    }
    
    @IBAction func tapped0(_ sender: Any) {
        toggle(index: 0)
    }
    @IBAction func tapped1(_ sender: Any) {
        toggle(index: 1)
    }
    @IBAction func tapped2(_ sender: Any) {
        toggle(index: 2)
    }
    @IBAction func tapped3(_ sender: Any) {
        toggle(index: 3)
    }
    @IBAction func tapped4(_ sender: Any) {
        toggle(index: 4)
    }
    @IBAction func tapped5(_ sender: Any) {
        toggle(index: 5)
    }
    
    func toggle(index: Int) {
        self.stackView.arrangedSubviews[index].alpha = self.stackView.arrangedSubviews[index].isHidden ? 1 : 0
        UIView.animate(withDuration: 1.0) {
            self.stackView.arrangedSubviews[index].isHidden.toggle()
            self.stackView.layoutIfNeeded()
        }
        
    }
    
    
    

}
