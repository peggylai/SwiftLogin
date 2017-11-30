//
//  RegisterPageViewController.swift
//  UserLoginAndRegisteration
//
//  Created by peggyLai on 10/7/17.
//  Copyright © 2017 peggyLai. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userPasswordTextField: UITextField!
   
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
    
        // check for empty fields
        
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword?.isEmpty)!)
       
        {
        // display alert message
            
            displayMyAlertMessage(userMessage: "All fields are required");
            
            return;
            
        }
        //check if password match
        if(userPassword != userRepeatPassword)
        {
        // display an alert message 
            displayMyAlertMessage(userMessage: "Passwords do not match");
            return;
        }
        
        // store data 
        UserDefaults.standard.set(userEmail, forKey:"userEmail");
        UserDefaults.standard.set(userPassword, forKey:"userPassword");
        UserDefaults.standard.synchronize();
        
       
        

        
        
        
        
        
        // display alert message with confirmation
        
        var myAlert = UIAlertController(title:"Alert", message:"Registeration is successful. Thank you!", preferredStyle: UIAlertControllerStyle.alert);

        
        let okAction = UIAlertAction(title:"Ok", style: UIAlertActionStyle.default){action in
            self.dismiss(animated: true, completion:nil);
            
        
        }
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);

        
    }
    
    
        func displayMyAlertMessage(userMessage:String)
        {
            var myAlert = UIAlertController(title:"Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert);
            
            
            let okAction = UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler:nil);
            
            myAlert.addAction(okAction);
            
            
            self.present(myAlert, animated:true,completion:nil);
            
        
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
