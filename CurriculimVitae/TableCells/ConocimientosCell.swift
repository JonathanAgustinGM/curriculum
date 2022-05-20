//
//  ConocimientosCell.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 20/05/22.
//

import UIKit

class ConocimientosCell: UITableViewCell {
    @IBOutlet weak var dato1: UILabel!
    @IBOutlet weak var dato2: UILabel!
    @IBOutlet weak var dato3: UILabel!
    @IBOutlet weak var dato4: UILabel!
    @IBOutlet weak var dato5: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
