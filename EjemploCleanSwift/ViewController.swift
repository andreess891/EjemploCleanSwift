//
//  ViewController.swift
//  EjemploCleanSwift
//
//  Created by Jonatan Londoño Taborda on 10/6/16.
//  Copyright © 2016 Jonatan Londoño Taborda. All rights reserved.
//

import UIKit

protocol ViewControllerOutput{
     func loginUser(user: Usuario?)
}

protocol ViewControllerInput {
    
    func showMessage(message:String) -> Void
    func startDashBoard() -> Void
}

class ViewController: UIViewController, ViewControllerInput {
    
    var output : ViewControllerOutput?

    // MARK: IBOutlets
    @IBOutlet weak var textfieldUserName: UITextField!

    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
         LoginConfigurator.sharedInstance.configure(viewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: IBActions
    @IBAction func buttonLogin(_ sender: AnyObject) {
        
        let usuario = Usuario.init(usuario: self.textfieldUserName.text, contrasenia: textFieldPassword.text)
        
        self.output?.loginUser(user: usuario)
    }
    
    // MARK: Internal Methods
    internal func startDashBoard() {
        
    }
    
    internal func showMessage(message: String) {
        print(message)
    }
}

