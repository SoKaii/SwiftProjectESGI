//
//  AuthenticationViewController.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 21/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {

    @IBOutlet var mailField: UITextField!
    @IBOutlet var pwdField: UITextField!
    @IBOutlet var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        // Do any additional setup after loading the view.
    }
    @IBAction func signUp(_ sender: UIButton) {
        self.navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    @IBAction func signIn(_ sender: Any) {
        if (mailField.text == "admin" && pwdField.text == "admin") {
            self.navigationController?.pushViewController(HomeTableViewController(), animated: true)
        } else {
            errorMessage.text = "Mail ou mot de passe incorrect"
            errorMessage.isHidden = false
        }
    }
    
    @IBAction func editMail(_ sender: Any) {
        errorMessage.isHidden = true
    }
    
    @IBAction func editPwd(_ sender: Any) {
        errorMessage.isHidden = true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
