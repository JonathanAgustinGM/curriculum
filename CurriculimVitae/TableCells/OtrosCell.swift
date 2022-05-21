//
//  OtrosCell.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 20/05/22.
//

import UIKit

class OtrosCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var Hobbiestitulo: UILabel!
    @IBOutlet weak var Hobbie1: UILabel!
    @IBOutlet weak var Hobbie2: UILabel!
    @IBOutlet weak var Hobbie3: UILabel!
    @IBOutlet weak var Deporte: UILabel!
    @IBOutlet weak var HobbiesImage: UIImageView!
    @IBOutlet weak var MetasEinteresestitle: UILabel!
    
    @IBOutlet weak var InteresesImage: UIImageView!
    @IBOutlet weak var meta1: UILabel!
    @IBOutlet weak var interes2: UILabel!
    @IBOutlet weak var interes1: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
