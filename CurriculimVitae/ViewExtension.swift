//
//  ViewExtension.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 20/05/22.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tipodedatos {
            case "acercademi":
        
        let cell = DatosProgramadorTable.dequeueReusableCell(withIdentifier: "acercademicell", for: indexPath) as? AcercaDeMiCell
        if let url = programadorDatos.Developer?.Foto {
            cell?.Foto.kf.setImage(with: URL(string: url))
            cell?.Foto.layer.cornerRadius = (cell?.Foto.bounds.width)! / 2.5
        }
        cell?.Edad.text = programadorDatos.Developer?.Edad
        cell?.SobreMi.text = programadorDatos.Developer?.AcercaDeMi
        return cell!
            case "conocimientos":
                let cell = DatosProgramadorTable.dequeueReusableCell(withIdentifier: "conocimientoscell", for: indexPath) as? ConocimientosCell
                let conocimientosdato = programadorDatos.Developer?.Conocimientos?.LenguajesProgramacion
                cell?.dato1.text = conocimientosdato?.iOS
                cell?.dato2.text = conocimientosdato?.xCode1
                cell?.dato3.text = conocimientosdato?.xCode2
                cell?.dato4.text = conocimientosdato?.xCode3
                cell?.dato5.text = conocimientosdato?.xCode4
                return cell!
            default:
                let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
                return cell
        }
}
}
