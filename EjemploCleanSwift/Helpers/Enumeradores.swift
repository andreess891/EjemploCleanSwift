//
//  Enumeradores.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import UIKit

enum MessageType : CustomStringConvertible {
    case error, warning, info
    
    
    
    var description: String {
        
        switch self {
        
        case .error:
            return "Titulo_Error".localized
        case .warning:
            return "Titulo_Advertencia".localized
        case .info:
            return "Titulo_Informacion".localized
        }
    }
}

