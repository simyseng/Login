//
//  ViewController.swift
//  Login
//
//  Created by Sim Yong Seng on 11/4/19.
//  Copyright © 2019 Sim Yong Seng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgetUsernameButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    @IBAction func forgetUsernameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgetUsernameOrPassword", sender: forgetUsernameButton)
    }
    @IBAction func forgetPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "forgetUsernameOrPassword", sender: forgetPasswordButton)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgetPasswordButton {
            segue.destination.navigationItem.title = "Forget Password"
        } else if sender == forgetUsernameButton {
            segue.destination.navigationItem.title = "Forget User Name"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
}

