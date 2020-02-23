//
//  SignUpViewController.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    
    
    @IBOutlet var firstName: UITextField?
    @IBOutlet var mailAddress: UITextField?
    @IBOutlet var password: UITextField?
    @IBOutlet var passwordConfirm: UITextField?
    @IBOutlet var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signUp(_ sender: Any) {
        if(password?.text != passwordConfirm?.text) {
            errorMessage.text = "Les mots de passes ne correspondent pas"
            errorMessage.isHidden = false
        }
    }
}
