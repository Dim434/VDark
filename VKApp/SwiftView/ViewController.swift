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
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
        let kbFrameSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        // scrollView.contentOffset = CGPoint(x: 0, y: kbFrameSize.height)
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: kbFrameSize.height+40, right: 0)
        
    }
    

}

