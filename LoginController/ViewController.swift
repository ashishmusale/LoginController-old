//
//  ViewController.swift
//  LoginController
//
//  Created by Musale, Ashish on 7/17/17.
//  Copyright © 2017 Ashish Musale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoginViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let loginController = LoginViewController()
        loginController.backgroundColor = UIColor.red
        loginController.delegate = self
        loginController.password = UITextField()
        loginController.username.placeholder = "blah"
        self.present(loginController, animated: true, completion: nil)
    }
    
    func signin(loginViewController: LoginViewController) {
        print ("delegate called successfully")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

