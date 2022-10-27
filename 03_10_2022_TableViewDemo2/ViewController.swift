//
//  ViewController.swift
//  03_10_2022_TableViewDemo2
//
//  Created by Vishal Jagtap on 27/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var studentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let basicCell = self.studentTableView.dequeueReusableCell(withIdentifier: "BasicCell")
        basicCell?.textLabel!.text = "Rachana -- \(indexPath.section) -- \(indexPath.row)"
        basicCell?.textLabel?.textColor = .orange
        basicCell?.textLabel?.backgroundColor = .cyan
        return basicCell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header - Section -- \(section)"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer - Section \(section)"
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
}

