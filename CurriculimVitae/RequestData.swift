//
//  RequestData.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 19/05/22.
//

import Foundation

class ExternalData {
    static let shared = ExternalData()
    private init() {}

    func GetDeveloperData(succes: @escaping (_ dev: Programador) -> Void) {
        let url = URL(string: "https://curriculumapp-b68c3-default-rtdb.firebaseio.com/.json")!
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                let programador = try? JSONDecoder().decode(Programador.self, from: data!)
                succes(programador!)
            }
        }.resume()
    }
}
