//
//  HomeViewController.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 22/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        let title: UILabel = UILabel()
        title.text = "BetSGI"
        title.font = UIFont.init(name: "KaushanScript-Regular", size: 20.0)
        
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true);
        self.navigationItem.titleView = title
        self.navigationItem.titleView?.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "AppGreen")
        
        
        
      
        

        // Do any additional setup after loading the view.
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
