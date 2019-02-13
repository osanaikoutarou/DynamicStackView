//
//  ListViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/13.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ListViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StackTableViewCell", for: indexPath) as! StackTableViewCell
        cell.tappedAction = {
            tableView.beginUpdates()
            cell.bottomView.isHidden = !cell.bottomView.isHidden
            tableView.endUpdates()
        }
        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath) as! StackTableViewCell
//        tableView.beginUpdates()
//        cell.bottomView.isHidden = !cell.bottomView.isHidden
//        tableView.endUpdates()
//    }
}
