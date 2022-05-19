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
        let url = URL(string: "https://curriculumapp-b68c3-default-rtdb.firebaseio.com/.json")!
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                let jonathan = try? JSONDecoder().decode(Jonathan.self, from: data!)
                print(jonathan)
                
            }
        }.resume()
    }
}
