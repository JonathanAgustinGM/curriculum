//
//  AcercaDeMiCell.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 19/05/22.
//

import UIKit

class AcercaDeMiCell: UITableViewCell {
    @IBOutlet weak var Edad: UILabel!
    @IBOutlet weak var SobreMi: UILabel!
    @IBOutlet weak var Foto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
