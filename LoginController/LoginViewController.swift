//
//  LoginViewController.swift
//  LoginController
//
//  Created by Musale, Ashish on 7/17/17.
//  Copyright © 2017 Ashish Musale. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var username: UITextField!
    var password: UITextField!
    var errText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        addLogo()
        addTextFields()
        addSigninButton()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func addLogo() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 267, height: 73))
        let image = UIImage(named: "qb_logo.png");
        imageView.center = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/6)
        imageView.image = image;
        self.view.addSubview(imageView);
    }
    
    
    func addTextFields() {
        username = UITextField(frame: CGRect(x: 50, y: (self.view.frame.height-200)/2 - 30, width: self.view.frame.width - 100, height: 48))
        username.borderStyle = .roundedRect
        username.placeholder = "Username"
        username.spellCheckingType = .no
        username.becomeFirstResponder()
        username.returnKeyType = .next
        username.delegate = self
        self.view.addSubview(username)
        
        password = UITextField(frame: CGRect(x: 50, y: (self.view.frame.height-200)/2 + 30, width: self.view.frame.width - 100, height: 48))
        password.isSecureTextEntry = true
        password.placeholder = "Password"
        password.borderStyle = .roundedRect
        password.spellCheckingType = .no
        password.delegate = self
        password.returnKeyType = .done
        self.view.addSubview(password)
        
    }
    
    func addSigninButton() {
        var signinButton: UIButton!
        signinButton = UIButton(type: .system)
        signinButton.frame = CGRect(x: 0, y: self.view.frame.height - 64, width: self.view.frame.width, height: 64)
        signinButton.setTitle("Sign In", for: .normal)
        signinButton.setTitleColor(.white, for: .normal)
        signinButton.backgroundColor = UIColor.qb_dark()
        signinButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        signinButton.layer.cornerRadius = 0
        signinButton.layer.masksToBounds = true
        signinButton.addTarget(self, action: #selector(signin), for: .touchUpInside)
        self.view.addSubview(signinButton)
        
    }
    
    open func setBackgroundColor(_ color: UIColor) {
        self.view.backgroundColor = color;
    }
    
}
