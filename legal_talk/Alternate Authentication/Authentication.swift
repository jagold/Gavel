//
//  Authentication.swift
//  legal_talk
//
//  Created by Jack on 6/10/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import AWSMobileClient

class Authentication: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameField.delegate = self
        passwordField.delegate = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func signInTap(_ sender: Any) {
        AWSMobileClient.default().signIn(username: self.usernameField.text ?? "No Username", password: self.passwordField.text ?? "No Password"){SignInResult, error in
            
            if(SignInResult?.signInState == .signedIn){
                print("It is equal")
                print(AWSMobileClient.default().username ?? "No username")
            }
            debugPrint(SignInResult ?? "No result", error ?? "No error")
            
        }
    }
    
}
