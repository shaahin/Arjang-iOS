//
//  LoginViewController.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 9/16/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import UIKit
protocol LoginViewControllerDelegate {
    // User Canceled
    // User Login Error
    // User Login OK
    
    func loginViewController(_ vc: LoginViewController ,loginOKWithUsername username: String ,andPass pass: String)
    
    func loginViewControllerDidCancel(_ vc: LoginViewController)
    
    func loginViewController(_ vc: LoginViewController, didFailWithUsername username: String, andPass pass: String)
    
}

class LoginViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancel(_ sender: UIButton) {
        delegate?.loginViewControllerDidCancel(self)
        
        dismiss(animated: true, completion: nil)

    }
    @IBAction func login(_ sender: UIButton) {
        if passwordField.text == "12345" {
            delegate?.loginViewController(self, loginOKWithUsername: emailField.text!, andPass: passwordField.text!)
            
            dismiss(animated: true, completion: nil)
            
        }else{
            delegate?.loginViewController(self, didFailWithUsername: emailField.text!, andPass: passwordField.text!)
        
            let alert = UIAlertController(title: "CIW", message: "Username/Password is not correct", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }

}
