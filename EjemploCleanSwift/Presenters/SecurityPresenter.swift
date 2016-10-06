//
//  SecurityPresenter.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//
protocol SecurityPresenterOutput{
    func showMessage(message:String) -> Void
    func startDashBoard() -> Void
}

protocol SecurityPresenterInput {
    func presentMessage(message: String,messageType:MessageType)
    func presentDashBoard(json: String)
}

class SecurityPresenter : SecurityPresenterInput{
    
    var output: SecurityPresenterOutput?
    
    
    internal func presentDashBoard(json: String) {
        self.output?.startDashBoard()
    }

    internal func presentMessage(message: String, messageType: MessageType) {
        self.output?.showMessage(message: message)
    }
}
