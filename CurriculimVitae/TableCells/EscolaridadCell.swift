//
//  EscolaridadCell.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 20/05/22.
//

import UIKit

class EscolaridadCell: UITableViewCell {

    @IBOutlet weak var BachilleratoTitle: UILabel!
    @IBOutlet weak var BachilleratoInstitucion: UILabel!
    @IBOutlet weak var BachilleratoFechaInicio: UILabel!
    @IBOutlet weak var BachilleratoFechaFinal: UILabel!
    @IBOutlet weak var BachilleratoEstado: UILabel!
    @IBOutlet weak var LicenciaturaTitle: UILabel!
    @IBOutlet weak var LicenciaturaInstitucion: UILabel!
    @IBOutlet weak var LicenciaturaCarrera: UILabel!
    @IBOutlet weak var LicenciaturaFechaInicio: UILabel!
    @IBOutlet weak var LicenciaturaFechaFinal: UILabel!
    @IBOutlet weak var LicenciaturaEstado: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
