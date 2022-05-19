//
//  Structs.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 19/05/22.
//

import Foundation
 
struct Jonathan: Decodable {
    var Developer: Developer?
}
struct Developer: Decodable {
    var Nombre: String?
    var Edad: Int?
}
