//
//  ViewController.swift
//  Intake4FirstDemo
//
//  Created by IDEAcademy on 11/11/20.
//  Copyright © 2020 IDEAEG. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passowrdTextField: UITextField!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello Mohamed!")
    }

    
    private func validateFields() -> Bool {
        if let name = nameTextfield.text, let email = emailTextField.text, let passowrd = passowrdTextField.text {
            self.user = User(name: name, email: email, password: passowrd)
            return true
        }
        return false
    }
    
    private func goToLoginScreen() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = sb.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        loginVC.user = self.user
        self.present(loginVC, animated: true, completion: nil)
    }
    
    @IBAction func goToLoginScreenBtnTapped(_ sender: UIButton) {
        if validateFields() {
            goToLoginScreen()
        }
    }
    
}

