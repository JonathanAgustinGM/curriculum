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
        abrirCerrarMenu()

       
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
    tipodedatos = "acercademi"
        self.DatosProgramadorTable.reloadData()
        self.abrirCerrarMenu()
    }
    @IBAction func DatosConocimientos(_ sender: Any) {
        tipodedatos = "conocimientos"
        self.DatosProgramadorTable.reloadData()
        self.abrirCerrarMenu()
    }
    func abrirCerrarMenu() {
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
}

