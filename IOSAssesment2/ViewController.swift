//
//  ViewController.swift
//  IOSAssesment2
//
//  Created by Cameron Hurt on 10/25/18.
//  Copyright © 2018 Cameron Hurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        guard let firstName = firstNameTextField.text, !firstName.isEmpty,
            let lastName = lastNameTextField.text, !lastName.isEmpty,
            let email = emailTextField.text, !email.isEmpty
            else {
                let errorAlert = UIAlertController(title: "Error", message: "Please fill all fields", preferredStyle: UIAlertController.Style.alert)
                let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) {UIAlertAction in}
                errorAlert.addAction(dismissAction)
                self.present(errorAlert, animated: true, completion: nil)
                return
        }
        
        let personAlert = UIAlertController(title: "Greetings", message: "Hello \(firstName)\(lastName)! Your email address is \(email)", preferredStyle: .alert)
        self.present(personAlert, animated: true, completion: nil)
        
    }
    
    
}


