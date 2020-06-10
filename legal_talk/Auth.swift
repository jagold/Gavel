//
//  Auth.swift
//  legal_talk
//
//  Created by Jack on 5/27/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import AWSMobileClient

class Auth: UIViewController {

    @IBOutlet weak var enterButton: UIButton!
    var server_action = server_handler()
    var data_model = DataModel()
    override func viewDidLoad() {
        super.viewDidLoad()


        initializeAWSMobileClient()
       
        
    }
    

    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "setUpUser":
            guard let setUpUser = segue.destination as? UserSetUp else{
                fatalError("unexpected destination")
            }
            setUpUser.data_model = self.data_model
        
        case "toClientMenu":
            guard let clientMenu = segue.destination as? ClientMenu else{
                fatalError("Unexpected destination")
            }
            
            
            clientMenu.data_model = self.data_model
            
            
            
            
        case "toAttorneyMenu":
            guard let AttorneyMenu = segue.destination as? AttorneyMenu else{
                fatalError("Unexpected Destination")
            }

            
            AttorneyMenu.Data_Model = self.data_model
            
        default:
            fatalError("NO hits on segue")
        }
    }
    
    
    func initializeAWSMobileClient(){
    
        AWSMobileClient.default().initialize{ (userState, error) in
            
            switch(userState){
            case .signedOut:
                self.showSignIn(){userName in
                    
                    self.data_model.user = userName
                    
                    self.server_action.Data_Model = self.data_model
                    
                    self.server_action.fetchTreatmentHistory(userName: self.data_model.user){treatmentArray, doctorList, attorney, name in
                        
                        self.data_model.Treatments = treatmentArray
                        self.data_model.Doctors = doctorList
                        self.data_model.attorney = attorney
                        self.data_model.name = name
              
                        if(treatmentArray.count > 0 || doctorList.count > 0){
                            self.performSegue(withIdentifier: "toClientMenu", sender: nil)
                        }
                            
                        
                    }
                        
                    
                    self.server_action.retrieveAttorney(username: self.data_model.user){ attorney in
                        
                        if(attorney != "Nil"){
                            self.performSegue(withIdentifier: "toAttorneyMenu", sender: nil)
                        }
                        
                    }
                    
                    
                    /*
                     This is a bad design, but I plan on doing a custom authorization timeline using
                     AWSMobileClient.default().signIn(username: <#T##String#>, password: <#T##String#>, completionHandler: <#T##((SignInResult?, Error?) -> Void)##((SignInResult?, Error?) -> Void)##(SignInResult?, Error?) -> Void#>)
                     and
                     
                     AWSMobileClient.default().signUp(username: <#T##String#>, password: <#T##String#>, completionHandler: <#T##((SignUpResult?, Error?) -> Void)##((SignUpResult?, Error?) -> Void)##(SignUpResult?, Error?) -> Void#>)
                     
                     any. DO that after other functionality is implemented
                     */
                    
                    self.performSegue(withIdentifier: "setUpUser", sender: nil)
                    

                        }
 

            default:
                
                print("No hit")
            }
            
        }
    }
    
    
    func showSignIn(completion: @escaping (String) ->Void) {
    
        AWSMobileClient.default().showSignIn(navigationController: self.navigationController!, {(userState, error) in
            if (error == nil){
                completion(AWSMobileClient.default().username ?? "")
                
            }
            
            
        })
            
    }
     
    
    
}
