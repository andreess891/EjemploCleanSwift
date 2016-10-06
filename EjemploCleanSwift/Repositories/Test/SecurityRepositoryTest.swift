//
//  SecurityRepositoryTest.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import UIKit

class SecurityRepositoryTest: ISecurityRepository {
    
    static let sharedInstance = SecurityRepositoryTest()
    
    class var sharedDispatchInstance: SecurityRepositoryTest {
        struct Stactic {
            static var onceToken = 0
            static var instance: SecurityRepositoryTest? = nil
        }
        return Stactic.instance!
    }
    
    class var sharedStructInstance: SecurityRepositoryTest {
        struct Stactic {
            static let instance = SecurityRepositoryTest()
        }
        return Stactic.instance
    }
    
    func loginUser(user: Usuario, completionHandler: (String?, NSError?) -> Void) {
        completionHandler("", nil);
    }
}
