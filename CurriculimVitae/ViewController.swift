//
//  ViewController.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 18/05/22.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    var programadorDatos = Programador()

    @IBOutlet weak var DatosProgramadorTable: UITableView!
    @IBOutlet weak var MenuBtn: UIBarButtonItem!
    @IBOutlet weak var IzquierdaConstraint: NSLayoutConstraint!
    @IBOutlet weak var DerechaConstraint: NSLayoutConstraint!
    @IBOutlet weak var NombreProgramador: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ExternalData.shared.GetDeveloperData { dev in
            self.programadorDatos = dev
            print(self.programadorDatos.Developer!.Edad!)
            
            DispatchQueue.main.async {
                self.NombreProgramador.text = self.programadorDatos.Developer?.Nombre
                self.DatosProgramadorTable.reloadData()
                
            }
        }
       
        DatosProgramadorTable.dataSource = self
        DatosProgramadorTable.register(UINib(nibName: "AcercaDeMiCell", bundle: nil), forCellReuseIdentifier: "acercademicell")
       
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
      
    }
    @IBAction func menubtn(_ sender: Any) {
     abrirMenu()

    func abrirMenu(){
        if DerechaConstraint.constant == 0 {
            DerechaConstraint.constant = 240
            IzquierdaConstraint.constant = -240
            MenuBtn.title = "Cerrar"
        }
        else {
            DerechaConstraint.constant = 0
            IzquierdaConstraint.constant = 0
            MenuBtn.title = "Menú"
            
        }
        
    }
   
}
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = DatosProgramadorTable.dequeueReusableCell(withIdentifier: "acercademicell", for: indexPath) as? AcercaDeMiCell
        if let url = programadorDatos.Developer?.Foto {
            
            cell?.Foto.kf.setImage(with: URL(string:url))
            cell?.Foto.layer.cornerRadius = (cell?.Foto.bounds.width)! / 2.5
        }
        cell?.Edad.text = programadorDatos.Developer?.Edad
        cell?.SobreMi.text = programadorDatos.Developer?.AcercaDeMi
        return cell!
    }
    
    
}
