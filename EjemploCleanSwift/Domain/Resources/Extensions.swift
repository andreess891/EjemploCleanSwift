//
//  Extensions.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import UIKit
import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self,bundle: Bundle(identifier: "com.jalt.company.EjemploCleanSwift")! ,comment: "")
    }
}
