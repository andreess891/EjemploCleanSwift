//
//  LoginConfigurator.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import Foundation

extension ViewController : SecurityPresenterOutput {

}
 extension SecurityBusinessLogic : ViewControllerOutput {
}

extension SecurityPresenter : SecurityBusinessLogicOutput{
}

class LoginConfigurator {
    class var sharedInstance: LoginConfigurator {
        struct Static {
            static var instance: LoginConfigurator?
            static var token = 0
        }
        Static.instance = LoginConfigurator()
        return Static.instance!
    }
    
    // MARK: Configuration
    
    func configure(viewController: ViewController)
    {
       // let router = LoginRouter()
       // router.viewController = viewController
        
        let presenter = SecurityPresenter()
        presenter.output = viewController
        
        let interactor = SecurityBusinessLogic()
        interactor.output = presenter
        viewController.output = interactor
       // viewController.router = router
    }
}
