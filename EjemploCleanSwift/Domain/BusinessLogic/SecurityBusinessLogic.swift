//
//  SecurityBusinessLogic.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import UIKit

protocol SecurityBusinessLogicOutput {
    func presentMessage(message: String,messageType:MessageType)
    func presentDashBoard(json: String)
}

protocol SecurityBusinessLogicInput {
    func loginUser(user: Usuario?)
     
}

class SecurityBusinessLogic: SecurityBusinessLogicInput {
    
    var output : SecurityBusinessLogicOutput!
    
    var repositoryLocator = RepositoryLocator().productsRepository()
    
    func loginUser(user: Usuario?) {
        
        repositoryLocator.loginUser( user: user!) { (json, error) in
            if (json != nil && json != "" )  {
                self.output.presentDashBoard(json: json!)
            }else {
                let errorString = "Error"// error.obtenerMensajeError()
                self.output.presentMessage(message: errorString, messageType: MessageType.error)
            }
        }

    }
}
