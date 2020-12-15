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
    
    var server_action = server_handler()
    
    var attorney = String()
    var attorneyFirm = String()
    var firmFirm = String()
    let group = DispatchGroup()
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
            
        case "toClientMenu":
            guard let clientMenu = segue.destination as? UITabBarController else{
                fatalError("Unexpected destination")
            }
            
            server_action.getDocumentKeys(){docData, docList in
                globalData.documents = docData
                globalData.DocumentList = docList
            }
            
        case "toAttorneyMenu":
            guard let AttorneyMenu = segue.destination as? UITabBarController else{
                fatalError("Unexpected Destination")
            }
            
            globalData.attorney = self.attorney
            
            globalData.firm = self.attorneyFirm
            
            
        case "toFirmMenu":
            guard let FirmMenu = segue.destination as? FirmMenu else{
                fatalError("Unexpected Destination")
            }
            
            //get the firms' attorneys
            
            self.server_action.fetchAttorneys(Firm: globalData.user){attorneys in
                
                print(attorneys.count)
                globalData.attorneys = attorneys
                
            }
            
            
            globalData.firm = self.firmFirm
            
            
            
        default:
            fatalError("NO hits on segue")
        }
    }
    
    
    func initializeAWSMobileClient(){
        
        
        
        AWSMobileClient.default().initialize{ (userState, error) in
            
            switch(userState){
            case .signedOut:
                AWSMobileClient.default().showSignIn(navigationController: self.navigationController!, signInUIOptions: SignInUIOptions(canCancel:false, logoImage: #imageLiteral(resourceName: "Gavel") /*UIImage(named: "hammer-1.png")*/, backgroundColor: UIColor.white, secondaryBackgroundColor: UIColor.black, primaryColor: UIColor.orange, disableSignUpButton: false)){userName, error  in
                    
                    
                    
                    globalData.user = AWSMobileClient.default().username!
                    
                    
                    
                    
                    self.getClientType()
                    
                    self.group.notify(queue: .main){
                        if(globalData.name != ""){
                            self.server_action.fetchFutureTreatmentHistory(userName: globalData.user){futureTreatments in
                                
                                print("getting future treatments")
                                globalData.futureTreatments = futureTreatments
                                
                            }
                            self.performSegue(withIdentifier: "toClientMenu", sender: self)
                        }else if( self.attorney != "Nil"){
                            self.performSegue(withIdentifier: "toAttorneyMenu", sender: nil)
                        }else if(self.firmFirm != "Nil"){
                            
                            self.performSegue(withIdentifier: "toFirmMenu", sender: nil)
                        }else{
                            self.performSegue(withIdentifier: "setUpUser", sender: nil)
                        }
                    }
                    
                    
                    
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
    
    
    
    func getClientType(){
        
        
        self.group.enter()
        self.server_action.fetchTreatmentHistory(userName: globalData.user){treatmentArray,missedList, doctorList, attorney, name, providers  in
            
            //Will also have Providers
            globalData.Treatments = treatmentArray
            globalData.Doctors = doctorList
            globalData.attorney = attorney
            globalData.firm = attorney
            globalData.name = name
            globalData.Providers = providers
            print("second provider list: ")
            print(globalData.Providers.count)
            globalData.Treatments.reverse()
            globalData.Doctors.reverse()
            globalData.MissedTreatments = missedList
            self.group.leave()
            
            
        }
        
        self.group.enter()
        self.server_action.retrieveAttorney(username: globalData.user){ attorney, firm in
            
            
            self.attorney = attorney
            self.attorneyFirm = firm
            if(attorney != "Nil" && firm != "Nil"){
                globalData.attorney = attorney
                globalData.firm = firm
            }
            self.group.leave()
            
            
        }
        
        self.group.enter()
        self.server_action.retrieveFirm(userName: globalData.user){firm in
            print(firm)
            
            self.firmFirm = firm
            
            self.group.leave()
            
            
        }
        
    }
    
    
    
    
}
