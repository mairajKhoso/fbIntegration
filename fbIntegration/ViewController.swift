//
//  ViewController.swift
//  fbIntegration
//
//  Created by Mairaj khoso on 8/4/18.
//  Copyright © 2018 Mairaj khoso. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit


class ViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //userName.text = ""
        
        
        let loginButton = FBSDKLoginButton()
        // Optional: Place the button in the center of your view.
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        
        
        loginButton.readPermissions = ["public_profile", "email"]
        
        
       
   
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"email,name"]).start(completionHandler: { connection, result, error in
            if error == nil {
                if let aResult = result as? [String:Any] {
                    print("fetched user:\(aResult)")
                    
                    
                    
                }
                
                
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    
    
    
    

}

