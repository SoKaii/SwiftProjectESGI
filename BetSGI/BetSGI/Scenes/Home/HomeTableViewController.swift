//
//  HomeTableViewController.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 23/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    enum Identifier: String {
        case rooms
    }
    
    var rooms : [Room]!
    let dateFormatter = DateFormatter()
    
    
    
    @IBOutlet var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableV.register(UINib(nibName: "RoomTableViewCell", bundle: nil), forCellReuseIdentifier: Identifier.rooms.rawValue)
        self.tableV.dataSource = self
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3 //TODO Récupérer le nombre de room auquel l'utilisateur participe
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableV.dequeueReusableCell(withIdentifier: "RoomTableViewCell") as! RoomTableViewCell
        return cell
    }
    
}
