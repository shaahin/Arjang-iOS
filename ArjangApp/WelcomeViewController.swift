//
//  WelcomeViewController.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 8/18/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = "Enter Your Name"
    }
    
    @IBAction func welcome(_ sender: UIButton) {
        welcomeMessageLabel.text = "Welcome \(nameField.text!)"
    }
    
}
