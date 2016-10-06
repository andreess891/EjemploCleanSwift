//
//  ISecurityRepository.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import Foundation

protocol ISecurityRepository {
    func loginUser(user :Usuario,completionHandler:(_ json : String?,_ error: NSError?) -> Void)
}
