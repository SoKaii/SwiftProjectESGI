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
    
    override func awakeFromNib() {
        let scoreOne: Int = 4
        let scoreTwo: Int = 0
        teamOneLogo.image = UIImage(named: "logoPsg")
        teamTwoLogo.image = UIImage(named: "logoOM")
        teamOneName.text = "PSG"
        teamTwoName.text = "OM"
        scoreTeamOne.text = String(scoreOne)
        scoreTeamTwo.text = String(scoreTwo)
        if(scoreOne > scoreTwo) {
                
        }
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
