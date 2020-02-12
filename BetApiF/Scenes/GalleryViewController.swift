//
//  GalleryViewController.swift
//  BetApiF
//
//  Created by MATTHIEU HABIB on 12/02/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    let listteamsWebService: ListTeamsWebService = ListTeamsWebService()
    let listmatchesWebService: ListMatchesWebService = ListMatchesWebService()
    let listplayersWebService: ListPlayersWebService = ListPlayersWebService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.listteamsWebService.getListTeams { (listteams) in
//        }
//        self.listmatchesWebService.getListMatches { (listmatches) in
//        }
        self.listplayersWebService.getListPlayers { (listplayers) in
        }

    }
}
