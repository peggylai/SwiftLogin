//
//  ViewController.swift
//  UserLoginAndRegisteration
//
//  Created by peggyLai on 9/7/17.
//  Copyright © 2017 peggyLai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        
        let isUerLoggedIn = UserDefaults.standard.bool(forKey: "isUerLoggedIn");
        if(!isUerLoggedIn)
        {
        
        self.performSegue(withIdentifier: "loginView", sender: self);
        //self.performSequeWithIdentifier("loginView", sender: self);
       }
    }
    
    
    @IBAction func LogoutButtonTapped(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey:"isUerLoggedIn");
        //(false,forKey: "isUerLoggedIn");
        
        UserDefaults.standard.synchronize();
        
        
        self.performSegue(withIdentifier: "loginView", sender: self);
        //self.performSequeWithIdentifier("loginView", sender: self);

    }
    

}

