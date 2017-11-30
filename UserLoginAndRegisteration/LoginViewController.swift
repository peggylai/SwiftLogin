//
//  LoginViewController.swift
//  UserLoginAndRegisteration
//
//  Created by peggyLai on 10/7/17.
//  Copyright © 2017 peggyLai. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailTextField.text;
        
        
        /*let emailTextField: UITextField = {
            let tf = UITextField()
            tf.placeholder = "Email Address"
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.addTarget(self, action: #selector(handleTextInputchange), for: .editingChanged)
            tf.autocorrectionType = .no
            return tf
        }()
        */
        
        
        
        let userPassword = userPasswordTextField.text;
        
        
        
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail");
        
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword");
        
        if(userEmailStored == userEmail)
        {
        if(userPasswordStored == userPassword)
        {
            // Login is successful
            UserDefaults.standard.set(true, forKey:"isUerLoggedIn");
            UserDefaults.standard.synchronize();
            self.dismiss(animated: true, completion:nil);
            
            
            }
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
