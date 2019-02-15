//
//  Sample4ViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/13.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class Sample4ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var v3: UIView!
    @IBOutlet weak var v4: UIView!
    @IBOutlet weak var v5: UIView!
//    @IBOutlet weak var viewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    @IBAction func tapepd1(_ sender: Any) {
        UIView.animate(withDuration: 1.5, animations: {
            self.v2.isHidden.toggle()
//            self.viewHeightConstraint.constant = 140.0
            self.stackView.layoutIfNeeded()
//            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    


}
