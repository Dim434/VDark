//
//  FriendListViewController.swift
//  VKApp
//
//  Created by Dmitry on 24.08.2020.
//  Copyright © 2020 g4play. All rights reserved.
//

import Foundation
import UIKit
class FriendCell : UITableViewCell{
    @IBOutlet weak var imageFriend: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    
}

class FriendListViewController : UITableViewController{
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FriendCell
        cell.nickname.text = "hello table"
        cell.imageFriend.image = UIImage(named: "1.jpg")
        return cell
    }
    
}
