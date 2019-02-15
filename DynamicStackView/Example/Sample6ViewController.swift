//
//  Sample6ViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/15.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class Sample6TableViewCell: UITableViewCell {
    
    @IBOutlet weak var stackView: UIStackView!
    var action:(() -> Void)?
    
    @IBAction func tappedButton(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.stackView.arrangedSubviews[1].isHidden.toggle()
//            self.action?()
        }
        
    }
    
}

class Sample6ViewController: UIViewController {

    var h: CGFloat = 300.0
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}

extension Sample6ViewController: UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return h
        }
        else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Sample6TableViewCell", for: indexPath) as! Sample6TableViewCell
            cell.action = {
//                if self.h == 300 {
//                    self.h = 200
//                }
//                else {
//                    self.h = 300
//                }
//                UIView.animate(withDuration: 1.0, animations: {
//                    tableView.beginUpdates()
//                    tableView.endUpdates()
//                })
            }
            return cell
        }
        else {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            cell.textLabel?.text = "dummy"
            return cell
        }
    }
    
    
}
