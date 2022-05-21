//
//  ExperienciaLaboralCell.swift
//  CurriculimVitae
//
//  Created by Jonathan Gracia on 20/05/22.
//

import UIKit

class ExperienciaLaboralCell: UITableViewCell {

    @IBOutlet weak var NombreEmpresa: UILabel!
    @IBOutlet weak var Funciones: UILabel!
    @IBOutlet weak var TiempoLaborado: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
