//
//  FirstViewController.swift
//  ArjangApp
//
//  Created by Shahin Katebi on 9/16/18.
//  Copyright © 2018 Seeb. All rights reserved.
//

import UIKit
class FirstViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "go to second" {
            // SecondViewController
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.name = nameField.text
        }else if segue.identifier == "go to login"
        {
            let loginViewController = segue.destination as! LoginViewController
            // 
        }
    }

    @IBAction func showLogin(_ sender: UIButton) {
        if nameField.text == "" {
            performSegue(withIdentifier: "go to login", sender: sender)
        }
    }
}
