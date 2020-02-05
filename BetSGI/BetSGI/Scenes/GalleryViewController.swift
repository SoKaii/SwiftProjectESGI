//
//  GalleryViewController.swift
//  BetSGI
//
//  Created by MATTHIEU HABIB on 16/01/2020.
//  Copyright © 2020 MATTHIEU HABIB. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    let listcompetitionsWebService: ListCompetitionsWebService = ListCompetitionsWebService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.listcompetitionsWebService.getListCompetitions { (listcompetitions) in
        }
    }
}
