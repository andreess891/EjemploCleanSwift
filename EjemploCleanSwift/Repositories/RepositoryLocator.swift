//
//  RepositoryLocator.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import Dispatch
import Foundation

class RepositoryLocator {
    
    static let sharedInstance = RepositoryLocator()
    
    var use_test_repository: Bool
    
    class var sharedDispatchInstance: RepositoryLocator {
        struct Stactic {
            static var onceToken = 0
            static var instance: RepositoryLocator? = nil
        }
        return Stactic.instance!
    }
    
    class var sharedStructInstance: RepositoryLocator {
        struct Static {
            static let instance = RepositoryLocator()
        }
        return Static.instance
    }
    
    init() {
        use_test_repository = Bundle(identifier: "com.jalt.company.EjemploCleanSwift")!.object(forInfoDictionaryKey: "Use test repos") as! Bool
    }
    
    func productsRepository() -> ISecurityRepository {
        if (use_test_repository) {
            return SecurityRepositoryTest.sharedInstance
        } else {
            return SecurityRepository.sharedInstance
        }
    }
    
    
}
