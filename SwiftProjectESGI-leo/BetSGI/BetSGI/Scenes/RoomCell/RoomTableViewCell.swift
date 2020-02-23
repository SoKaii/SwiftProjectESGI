//
//  RoomTableViewCell.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 23/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class RoomTableViewCell: UITableViewCell {

    @IBOutlet var playersCount: UILabel!
    @IBOutlet var roomName: UILabel!
    @IBOutlet var homeTeamLogo: UIImageView!
    @IBOutlet var awayTeamLogo: UIImageView!
    @IBOutlet var homeTeamName: UILabel!
    @IBOutlet var awayTeamName: UILabel!
    @IBOutlet var homeTeamScore: UILabel!
    @IBOutlet var awayTeamScore: UILabel!
    @IBOutlet var deleteImage: UIImageView!
    
    var room: Room!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        playersCount.text = "2"
        roomName.text = "Room Test"
        homeTeamLogo.image = UIImage(named: "logoPsg")
        awayTeamLogo.image = UIImage(named: "logoOM")
        homeTeamName.text = "PSG"
        awayTeamName.text = "OM"
        homeTeamScore.text = "3"
        awayTeamScore.text = "0"
        
        room = Room(name: "RoomTest") // Pour tester sans wService
             roomName.text = room.name
             
         /*
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(RoomTableViewCell.deleteRoom))
        deleteImage.isUserInteractionEnabled = true
        deleteImage.addGestureRecognizer(tapGestureRecognizer)
        // Initialization code */
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
