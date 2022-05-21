//
//  Structs.swift
//  CurriculimVitae
//
//  Created by Jordy Gracia on 19/05/22.
//

import Foundation
import CoreText
 
struct Programador: Decodable {
    var Developer: Developer?
}
struct Developer: Decodable {
    var Nombre: String?
    var Edad: String?
    var AcercaDeMi: String?
    var Conocimientos: Conocimientos?
    var Escolaridad: Escolaridad?
    var ExperienciaLaboral: ExperienciaLaboral?
    var Foto: String?
    var Otros: Otros?
}
struct Conocimientos: Decodable {
    var LenguajesProgramacion: LenguajesProgramacion?
    var Versionamiento: String?
}
struct LenguajesProgramacion: Decodable{
    var iOS: String?
    var xCode1: String?
    var xCode2: String?
    var xCode3: String?
    var xCode4: String?
    
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
struct Otros: Decodable {
    var Deportes: String?
    var Hobbie1: String?
    var Hobbie2: String?
    var Hobbies3: String?
    var Interes1: String?
    var Interes2: String?
    var Meta1: String?
    var HobbiesImage: String?
    var MetasInteresesImage: String?

}
