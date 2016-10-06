//
//  SecurityBusinessTest.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import XCTest

class SecurityBusinessTest: XCTestCase {
    
    var sujetoDePrueba : SecurityBusinessLogic?
    
    override func setUp() {
        super.setUp()
        setupSeguridadBusinessLogic()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func setupSeguridadBusinessLogic(){
        sujetoDePrueba = SecurityBusinessLogic()
    }
    
    class SeguridadBusinessOutputSpy : SecurityBusinessLogicOutput {
        
        // MARK: Method call expectations
        var presentoMensaje = false
        var presentoDashBoard = false
        
        // MARK: Spied methods
        func presentMessage(message: String, messageType: MessageType) {
            presentoMensaje = true
        }
        
        func presentDashBoard(json: String) {
            presentoDashBoard = true
        }
    }
    
    class SeguridadRepositorioSpy: ISecurityRepository{
        // MARK: Method call expectations
        var obtuvoDatosUsuario = false
        var jsonString = ""
        var error : NSError?
        
        func loginUser(user: Usuario, completionHandler: (_ json: String?,_ error: NSError?) -> Void) {
            obtuvoDatosUsuario = true
            completionHandler(jsonString, error)
        }
        
    }
    
    func testDeberiaAutenticarUsuario() {
        //Given
        let seguridadBusinessOutputSpy = SeguridadBusinessOutputSpy()
        sujetoDePrueba?.output = seguridadBusinessOutputSpy
        let repositorioSpy = SeguridadRepositorioSpy()
        sujetoDePrueba?.repositoryLocator = repositorioSpy
        
        //When
        let usuario = Usuario()
        repositorioSpy.jsonString = "{}"
        sujetoDePrueba?.loginUser(user: usuario)
        
        // Then
        XCTAssert(repositorioSpy.obtuvoDatosUsuario, "autenticarUsuario() debería autenticar el usuario contra el api.")
    }
    
}
