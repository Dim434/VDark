//
//  ViewController.swift
//  VKApp
//
//  Created by Dmitry on 15.08.2020.
//  Copyright © 2020 g4play. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loginButtonTouch(_ sender: Any) {
        if login.text == "LOGIN" && password.text == "PASSWORD"{
            performSegue(withIdentifier: "ToTabBar", sender: nil)
        }
    }
    

}

