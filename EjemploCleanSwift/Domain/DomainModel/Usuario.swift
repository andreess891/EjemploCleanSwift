//
//  Usuario.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import UIKit

class Usuario {
    var Usuario : String?
    var Contrasenia : String?
    
    init(){}
    
    init(usuario: String!, contrasenia: String!){
        self.Usuario = usuario
        self.Contrasenia = contrasenia
    }
}
