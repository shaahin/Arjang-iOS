//
//  LoginViewController.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 9/16/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancel(_ sender: UIButton) {
    }
    @IBAction func login(_ sender: UIButton) {
    }

}
