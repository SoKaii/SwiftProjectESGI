//
//  DeleteRoomViewController.swift
//  BetSGI
//
//  Created by VIDAL Léo on 18/02/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//


import UIKit

class DeleteRoomViewController: UIViewController {
    
    @IBOutlet var deleteRoom: UIButton!
    @IBOutlet var cancelDelete: UIButton!
    
    var room: Room!
    
    let roomWebService: RoomWebService = RoomWebService()

    class func newInstance(room: Room) -> DeleteRoomViewController {
        let deleteRoom = DeleteRoomViewController()
        deleteRoom.room = room
        return deleteRoom
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func deleteUserOfRoom(_sender: Any) {
//        Appel du wService pour supprimer la room de la liste de cette utilisateur
        roomWebService.deleteRoom(room: room) {
            (success) in
            print("\(success)")
        }
        
        print("delete Room")        // for test
//        let home = HomeTableViewController.newInstance(rooms: [Room])
//        self.navigationController?.pushViewController(home, animated: true) // Rechargement d'une page avec toute les room actualiser
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
