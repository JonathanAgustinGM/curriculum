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
        DatosProgramadorTable.register(UINib(nibName: "AcercaDeMiCell", bundle: nil), forCellReuseIdentifier: "acercademicell")
        DatosProgramadorTable.register(UINib(nibName: "ConocimientosCell", bundle: nil), forCellReuseIdentifier: "conocimientoscell")
    }

    @IBAction func menubtn(_ sender: Any) {
        abrirCerrarMenu(animated: true)

       
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
    @IBAction func DatosAcercademi(_ sender: Any) {
   acercademibtn(self)
        self.abrirCerrarMenu(animated: true)
    }
    @IBAction func DatosConocimientos(_ sender: Any) {
        conocimientosbtn(self)
        self.abrirCerrarMenu(animated: true)
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
        self.title = "Acerca de Mi"
        self.DatosProgramadorTable.reloadData()
    }
    @IBAction func conocimientosbtn(_ sender: Any) {
        tipodedatos = "conocimientos"
        self.title = "Conocimientos"
        self.DatosProgramadorTable.reloadData()
    }
}

