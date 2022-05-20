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
    var AcercaDeMi: String?
    var Conocimientos: Conocimientos?
    var Escolaridad: Escolaridad?
    var ExperienciaLaboral: ExperienciaLaboral?
}
struct Conocimientos: Decodable {
    var LenguajesProgramacion: LenguajesProgramacion?
    var Versionamiento: String?
}
struct LenguajesProgramacion: Decodable{
    var iOS: String?
    
}
struct Escolaridad: Decodable {
    var Licenciatura: Licenciatura?
    var Bachillerato: Bachillerato?
    
}
struct Licenciatura: Decodable {
    var Institucion: String?
    var Carrera: String?
    var FechaInicio: String?
    var FechaFinal: String?
    var Finalizada: Bool?
}
struct Bachillerato: Decodable {
    var Institucion: String?
    var FechaInicio: String?
    var FechaFinal: String?
    var Finalizada: Bool?
}
struct ExperienciaLaboral: Decodable {
    var Empresa1: Empresa1?
}
struct Empresa1: Decodable {
    var Funciones: String?
    var Nombre: String?
    var TiempoTrabajado: String?
    
}
