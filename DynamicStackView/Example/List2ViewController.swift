//
//  List2ViewController.swift
//  DynamicStackView
//
//  Created by osanai on 2019/02/13.
//  Copyright © 2019年 osanai. All rights reserved.
//

import UIKit

class List2ViewController: UIViewController {

    @IBOutlet weak var dynamicStackView: DynamicStackView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
//        for i in 0..<10 {
//            let view = List2Cell(frame: CGRect(x: 0, y: 0, width: 1, height: 20))
//            view.height = 70.0
//            if i % 2 == 0 {
//                view.backgroundColor = .yellow
//            }
//            else {
//                view.backgroundColor = .blue
//            }
//
//            view.tappedAction = {
//                UIView.animate(withDuration: 0.5, animations: {
//                    view.isHidden = true
//                    self.dynamicStackView.layoutIfNeeded()
//                    self.dynamicStackView.superview!.layoutIfNeeded()
//                    view.layoutIfNeeded()
//                })
//            }
//
//            dynamicStackView.addCell(cell: view)
//        }
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        dynamicStackView.hideCellsTo(num: 5, animationDuration: 1.5)
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

extension List2ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "List2TableViewCell", for: indexPath) as! List2TableViewCell
        return cell
    }
    
    
}
