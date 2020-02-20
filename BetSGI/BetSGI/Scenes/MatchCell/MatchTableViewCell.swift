//
//  MatchTableViewCell.swift
//  BetSGI
//
//  Created by Thomas MARTIN on 23/01/2020.
//  Copyright © 2020 SoKaii. All rights reserved.
//

import UIKit

class MatchTableViewCell: UITableViewCell {

    @IBOutlet var teamOneName: UILabel!
    @IBOutlet var teamTwoName: UILabel!
    @IBOutlet var teamOneLogo: UIImageView!
    @IBOutlet var teamTwoLogo: UIImageView!
    @IBOutlet var scoreTeamOne: UILabel!
    @IBOutlet var scoreTeamTwo: UILabel!
    @IBOutlet var matchDate: UILabel! // "dd/MM/yyyy HH:mm"
    @IBOutlet var coteHomeTeam: UILabel!
    @IBOutlet var coteAwayTeam: UILabel!
    @IBOutlet var coteNull: UILabel!

    override func awakeFromNib() {
        let coteTeamOne: Int = 1
        let coteTeamTwo: Int = 2
        let coteTeamNull: Int = 3
        let scoreOne: Int = 4
        let scoreTwo: Int = 0
        teamOneLogo.image = UIImage(named: "logoPsg")
        teamTwoLogo.image = UIImage(named: "logoOM")
        teamOneName.text = "PSG"
        teamTwoName.text = "OM"
        scoreTeamOne.text = String(scoreOne)
        scoreTeamTwo.text = String(scoreTwo)
        coteHomeTeam.text = String(coteTeamOne)
        coteNull.text = String(coteTeamNull)
        coteAwayTeam.text = String(coteTeamTwo)
        if(scoreOne > scoreTwo) {
                
        }
        
//      Traitement pour rendre les labels des cotes cliquable
        
        let touchCoteAway = UITapGestureRecognizer(target: self, action: #selector(MatchTableViewCell.betAwayTeam))
        coteAwayTeam.isUserInteractionEnabled = true
        coteAwayTeam.addGestureRecognizer(touchCoteAway)
        
        let touchCoteHome = UITapGestureRecognizer(target: self, action: #selector(MatchTableViewCell.betHomeTeam))
        coteHomeTeam.isUserInteractionEnabled = true
        coteHomeTeam.addGestureRecognizer(touchCoteHome)
        
        let touchCoteNull = UITapGestureRecognizer(target: self, action: #selector(MatchTableViewCell.betNull))
        coteNull.isUserInteractionEnabled = true
        coteNull.addGestureRecognizer(touchCoteNull)

        
        super.awakeFromNib()  // On est pas censer appeler la super avant les initialisation ??
        // Initialization code
    }
    
    @objc
    func betAwayTeam(sender: UITapGestureRecognizer){
        // Appel Wservice pour parier sur la team exterieur
        print("bet Away Team")      // for test
    }
    
    @objc
    func betHomeTeam(_sender: UITapGestureRecognizer){
//        Appel Wservice pour parier sur la team a domicile
        print("bet Home Team")      // for test
    }
    
    @objc
    func betNull(_sender: UITapGestureRecognizer){
//        Appel Wservice pour parier sur null
        print("bet Away Team")      // for test
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
