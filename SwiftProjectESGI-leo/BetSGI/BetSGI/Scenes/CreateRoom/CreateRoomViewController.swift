//
//  CreateRoomViewController.swift
//  BetSGI
//
//  Created by VIDAL Léo on 19/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class CreateRoomViewController: UIViewController {

    @IBOutlet var nameRoom: UITextField!
    @IBOutlet var createRoom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func submitRoom(_sender: Any){
        let name = self.nameRoom.text
//        Appel du WService pour créer une room
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
