//
//  ViewController.swift
//  Swift5Keyboard1
//
//  Created by 山本ののか on 2020/04/22.
//  Copyright © 2020 Nonoka Yamamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var passWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passWordTextField.delegate = self
    }

    @IBAction func login(_ sender: Any) {
        
        logoImageView.image = UIImage(named: "loginOK")
        userNameLabel.text = userNameTextField.text
        passWordLabel.text = passWordTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}
