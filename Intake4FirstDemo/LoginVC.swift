//
//  SecondVC.swift
//  Intake4FirstDemo
//
//  Created by IDEAcademy on 11/11/20.
//  Copyright © 2020 IDEAEG. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func validateFields() -> Bool {
        if let email = emailTextField.text, let passowrd = passwordTextField.text, email == self.user.email, passowrd == self.user.password {
            return true
        }
        return false
    }
    
    private func goToProfileScreen() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let profileVC = sb.instantiateViewController(withIdentifier: "ProfileVC") as! ProfileVC
        profileVC.user = self.user
        self.present(profileVC, animated: true, completion: nil)
    }
    
    @IBAction func backBtnTapped(_ sender: UIButton) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func goToProfileScreenBtnTapped(_ sender: UIButton) {
        if validateFields() {
            goToProfileScreen()
        } else {
            print("Enter valid credentials")
        }
    }
    
    
}
