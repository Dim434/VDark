//
//  ViewController.swift
//  VKApp
//
//  Created by Dmitry on 15.08.2020.
//  Copyright © 2020 g4play. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    @IBAction func loginButtonTouch(_ sender: Any) {
        if login.text == "LOGIN" && password.text == "PASSWORD"{
            performSegue(withIdentifier: "ToTabBar", sender: nil)
        }
    }
    @objc
    func keyboardWillShow(notification : Notification)  {
        guard let keyboardHeight = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}

        
    }
    

}

