//
//  ViewController.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 18/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ExternalData.shared.GetDeveloperData()
    }
}
