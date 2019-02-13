//
//  Sample3ViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/13.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class Sample3ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var stackView2: DynamicStackView!
    @IBOutlet weak var v: UIView!
    @IBOutlet weak var heightConstraint2: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        heightConstraint.constant = stackView.expectedHeight()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedButton2(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
            self.stackView.arrangedSubviews[0].isHidden = !self.stackView.arrangedSubviews[0].isHidden
        }, completion: nil)

    }
    @IBAction func tappedButton(_ sender: Any) {
//        if !self.stackView.arrangedSubviews.last!.isHidden {
//            UIView.animate(withDuration: 0.5, animations: {
//                self.heightConstraint.constant = self.stackView.expectedHeight(when: 3, isHidden: true)
//                self.view.layoutIfNeeded()
//            }, completion: { finished in
//                self.stackView.arrangedSubviews.last!.isHidden = !self.stackView.arrangedSubviews.last!.isHidden
//            })
//        }
//        else {
//            self.stackView.arrangedSubviews.last!.isHidden = !self.stackView.arrangedSubviews.last!.isHidden
//            UIView.animate(withDuration: 0.5, animations: {
//                self.heightConstraint.constant = self.stackView.expectedHeight(when: 3, isHidden: false)
//                self.view.layoutIfNeeded()
//            }, completion: nil)
//        }
        
        UIView.animate(withDuration: 0.5, animations: {
            self.v.isHidden = !self.v.isHidden
            self.stackView2.layoutIfNeeded()
            self.heightConstraint2.constant = 50
        }, completion: nil)
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
