//
//  ViewController.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 18/05/22.
//

import Kingfisher
import UIKit

class ViewController: UIViewController {
    var programadorDatos = Programador()
    var tipodedatos = "acercademi"

    @IBOutlet var DatosProgramadorTable: UITableView!
    @IBOutlet var MenuBtn: UIBarButtonItem!
    @IBOutlet var IzquierdaConstraint: NSLayoutConstraint!
    @IBOutlet var DerechaConstraint: NSLayoutConstraint!
    @IBOutlet var NombreProgramador: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        recibirdatos()

        DatosProgramadorTable.dataSource = self
        
        DatosProgramadorTable.register(UINib(nibName: "AcercaDeMiCell",
                                             bundle: nil),
                                       forCellReuseIdentifier: "acercademicell")
        DatosProgramadorTable.register(UINib(nibName: "ConocimientosCell",
                                             bundle: nil),
                                       forCellReuseIdentifier: "conocimientoscell")
        DatosProgramadorTable.register(UINib(nibName: "ExperienciaLaboralCell",
                                             bundle: nil),
                                       forCellReuseIdentifier: "experiencialaboralcell")
        DatosProgramadorTable.register(UINib(nibName: "EscolaridadCell",
                                            bundle: nil),
                                      forCellReuseIdentifier: "escolaridadcell")
        DatosProgramadorTable.register(UINib(nibName: "OtrosCell",
                                             bundle: nil),
                                       forCellReuseIdentifier: "otroscell")
    }

    @IBAction func menubtn(_ sender: Any) {
        abrirCerrarMenu(animated: true)
    }

    @IBAction func DatosAcercademi(_ sender: Any) {
        acercademibtn(self)
        abrirCerrarMenu(animated: true)
    }

    @IBAction func DatosConocimientos(_ sender: Any) {
        conocimientosbtn(self)
        abrirCerrarMenu(animated: true)
    }

    @IBAction func DatosExperieciaLaboral(_ sender: Any) {
        experiencialaboralbtn(self)
        abrirCerrarMenu(animated: true)
    }
    @IBAction func DatosEscolaridad(_ sender: Any) {
        escolaridadbtn(self)
        abrirCerrarMenu(animated: true)
    }
    @IBAction func DatosOtros(_ sender: Any) {
        otrosbtn(self)
        abrirCerrarMenu(animated: true)
    }
    
    func abrirCerrarMenu(animated: Bool) {
        if DerechaConstraint.constant == 0 {
            DerechaConstraint.constant = 240
            IzquierdaConstraint.constant = -240
            MenuBtn.title = "Cerrar"
        } else {
            DerechaConstraint.constant = 0
            IzquierdaConstraint.constant = 0
            MenuBtn.title = "Menú"
        }
    }

    @IBAction func acercademibtn(_ sender: Any) {
        tipodedatos = "acercademi"
        title = "Acerca de Mi"
        DatosProgramadorTable.reloadData()
    }

    @IBAction func conocimientosbtn(_ sender: Any) {
        tipodedatos = "conocimientos"
        title = "Conocimientos"
        DatosProgramadorTable.reloadData()
    }

    @IBAction func experiencialaboralbtn(_ sender: Any) {
        tipodedatos = "experiencialaboral"
        title = "Experiencia Laboral"
        DatosProgramadorTable.reloadData()
    }

    @IBAction func escolaridadbtn(_ sender: Any) {
        tipodedatos = "escolaridad"
        title = "Escolaridad"
        DatosProgramadorTable.reloadData()
    }
    @IBAction func otrosbtn(_ sender: Any) {
        tipodedatos = "otros"
        title = "Otros"
        DatosProgramadorTable.reloadData()
    }
    func recibirdatos() {
        ExternalData.shared.GetDeveloperData { dev in
            self.programadorDatos = dev
            print(self.programadorDatos.Developer!.Edad!)

            DispatchQueue.main.async {
                self.NombreProgramador.text = self.programadorDatos.Developer?.Nombre
                self.DatosProgramadorTable.reloadData()
            }
        }
    }
}
