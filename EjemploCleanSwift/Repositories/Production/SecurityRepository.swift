//
//  SecurityRepository.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import UIKit

class SecurityRepository: ISecurityRepository {
    
    static let sharedInstance = SecurityRepository()
    
    class var sharedDispatchInstance: SecurityRepository {
        struct Stactic {
            static var onceToken = 0
            static var instance: SecurityRepository? = nil
        }
        return Stactic.instance!
    }
    
    class var sharedStructInstance: SecurityRepository {
        struct Stactic {
            static let instance = SecurityRepository()
        }
        return Stactic.instance
    }

    func loginUser(user: Usuario, completionHandler: (String?, NSError?) -> Void) {
        completionHandler("", nil);
    }
}
