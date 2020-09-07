//
//  GroupViewController.swift
//  VKApp
//
//  Created by Dmitry on 24.08.2020.
//  Copyright © 2020 g4play. All rights reserved.
//

import Foundation
import UIKit
class GroupCell : UITableViewCell{
    @IBOutlet weak var groupImage: AvatarView!
    @IBOutlet weak var groupTitle: UILabel!
    
}

class GroupTableController : UITableViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupCell
        cell.groupTitle.text = "hello table"
        cell.groupImage.setImage(UIImage(named: "1.jpg")!)
        return cell
    }
}
