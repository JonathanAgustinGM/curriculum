//
//  ViewExtension.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 20/05/22.
//

import Foundation
import Kingfisher
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
        case "experiencialaboral":
            let cell = DatosProgramadorTable.dequeueReusableCell(withIdentifier: "experiencialaboralcell", for: indexPath) as? ExperienciaLaboralCell
            let experienciadato = programadorDatos.Developer?.ExperienciaLaboral
            cell?.NombreEmpresa.text = experienciadato?.Empresa1?.Nombre
            let texto = experienciadato?.Empresa1?.Funciones?.replacingOccurrences(of: "\\n", with: "\n")
            cell?.Funciones.text = texto; cell?.TiempoLaborado.text = experienciadato?.Empresa1?.TiempoTrabajado
            return cell!

        case "escolaridad":
            let cell = DatosProgramadorTable.dequeueReusableCell(withIdentifier: "escolaridadcell", for: indexPath) as? EscolaridadCell
            let escolaridadDato = programadorDatos.Developer?.Escolaridad
            cell?.BachilleratoTitle.text = "Bachillerato"
            cell?.BachilleratoInstitucion.text = escolaridadDato?.Bachillerato?.Institucion
            cell?.BachilleratoFechaInicio.text = escolaridadDato?.Bachillerato?.FechaInicio
            cell?.BachilleratoFechaFinal.text = escolaridadDato?.Bachillerato?.FechaFinal
            if escolaridadDato?.Bachillerato?.Finalizada == true {
                cell?.BachilleratoEstado.text = "Finalizado"
            } else {
                cell?.BachilleratoEstado.text = "Trunco o en curso"
            }
            cell?.LicenciaturaTitle.text = "Licenciatura"
            cell?.LicenciaturaInstitucion.text = escolaridadDato?.Licenciatura?.Institucion
            cell?.LicenciaturaCarrera.text = escolaridadDato?.Licenciatura?.Carrera
            cell?.LicenciaturaFechaInicio.text = escolaridadDato?.Licenciatura?.FechaInicio
            cell?.LicenciaturaFechaFinal.text = escolaridadDato?.Licenciatura?.FechaFinal
            if escolaridadDato?.Licenciatura?.Finalizada == true {
                cell?.LicenciaturaEstado.text = "Finalizado"
            } else {
                cell?.LicenciaturaEstado.text = "Trunco o en curso"
            }
            return cell!
        case "otros":
            let cell = DatosProgramadorTable.dequeueReusableCell(withIdentifier: "otroscell", for: indexPath) as? OtrosCell
            cell?.Hobbiestitulo.text = "Hobbies"
            cell?.Deporte.text = programadorDatos.Developer?.Otros?.Deportes
            cell?.Hobbie1.text = programadorDatos.Developer?.Otros?.Hobbie1
            cell?.Hobbie2.text = programadorDatos.Developer?.Otros?.Hobbie2
            cell?.Hobbie3.text = programadorDatos.Developer?.Otros?.Hobbies3
            cell?.MetasEinteresestitle.text = "Metas e Intereses:"
            cell?.interes1.text = programadorDatos.Developer?.Otros?.Interes1
            cell?.interes2.text = programadorDatos.Developer?.Otros?.Interes2
            cell?.meta1.text = programadorDatos.Developer?.Otros?.Meta1
            let hobbiesimgurl = (programadorDatos.Developer?.Otros?.HobbiesImage)!
            let metasulrimgurl = (programadorDatos.Developer?.Otros?.MetasInteresesImage)!
            cell?.HobbiesImage.kf.setImage(with: URL(string: hobbiesimgurl))
            cell?.InteresesImage.kf.setImage(with: URL(string: metasulrimgurl))

            return cell!
        default:
            let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            return cell
        }
    }
}
