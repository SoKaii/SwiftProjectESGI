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
    
    let roomWebService = RoomWebService()
    let userWebService = UserWebService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        self.navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    @IBAction func signIn(_ sender: Any) {
         self.userWebService.getUsers { (users) in
            users.forEach { (user) in
                if ((self.mailField.text == user.mail && self.pwdField.text == user.password)
                    || (self.mailField.text == "admin" && self.pwdField.text == "admin") // TO DELETE BEFORE PROD
                    ) {
                         self.roomWebService.getRooms(completion: { (rooms) in
                            // TODO : N'envoyer que les rooms auxquelles l'utilisateur participe (modif dB)
                             let htvc = HomeTableViewController.newInstance(rooms: rooms)
                             self.navigationController?.pushViewController(htvc, animated: true)
                             print(rooms)
                         }) } else {
                             self.errorMessage.text = "Mail ou mot de passe incorrect"
                             self.errorMessage.isHidden = false
                         }
            }
         
        }
        if (self.mailField.text == "admin" && self.pwdField.text == "admin"// TO DELETE BEFORE PROD
            ) {
                     self.roomWebService.getRooms(completion: { (rooms) in
                        // TODO : N'envoyer que les rooms auxquelles l'utilisateur participe (modif dB)
                         let htvc = HomeTableViewController.newInstance(rooms: rooms)
                         self.navigationController?.pushViewController(htvc, animated: true)
                     }) } else {
                         self.errorMessage.text = "Mail ou mot de passe incorrect"
                         self.errorMessage.isHidden = false
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
