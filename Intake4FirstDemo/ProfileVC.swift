//
//  ProfileVC.swift
//  Intake4FirstDemo
//
//  Created by IDEAcademy on 11/16/20.
//  Copyright © 2020 IDEAEG. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var nameTextField: UILabel!
    @IBOutlet weak var emailTextField: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
    
    private func bindData() {
        nameTextField.text = user.name
        emailTextField.text = user.email
    }
}
