//
//  RoomTableViewCell.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 23/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class RoomTableViewCell: UITableViewCell {
    
    @IBOutlet var deleteImage: UIImageView!
    @IBOutlet var roomName: UILabel!

    var room: Room!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        room = Room(name: "RoomTest") // Pour tester sans wService
        roomName.text = room.name
        
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(RoomTableViewCell.deleteRoom))
        deleteImage.isUserInteractionEnabled = true
        deleteImage.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc
    func deleteRoom(sender: UITapGestureRecognizer) {
        print("delete Room")
//        let deleteRoom = DeleteRoomViewController.newInstance(room: room)
//        self.navigationController?.pushViewController(deleteRoom, animated: true)
        // Apparament pas possible d'utiliser le navigationController depuis une tableView a voir si on peut sinon on apelle direct le wService delete d'ici sans passer par la page de confirmation
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
