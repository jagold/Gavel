//
//  AttorneySetUp.swift
//  legal_talk
//
//  Created by Jack on 5/29/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class AttorneySetUp: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Go: UIButton!
    @IBOutlet weak var enterFirm: UITextField!
    @IBOutlet weak var enterName: UITextField!
    var server_action = server_handler()
    var activeText = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterFirm.delegate = self
        self.enterName.delegate = self

    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? ""{
        case "toAttorneyMenu":
            guard let NavController = segue.destination as? UINavigationController, let AttorneyMenu = NavController.topViewController as? AttorneyMenu else{
                fatalError("Unexpected Destination")
            }
            //Insert attorney, also need to attach the attorney to a firm
            
            self.server_action.insertAttorney(Name: enterName.text ?? "No name", Firm: globalData.firm)
            
            
            
            
        default:
            fatalError("NO match")
        }
        
    }
    

    //MARK: Text Field Delegate
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         //Hide keyboard
         textField.resignFirstResponder()
        
        if(self.activeText == enterFirm){
            /*
             attorney equivalent to getClientAttorney
             */
            self.server_action.attachAttorneyToFirm(code: enterFirm.text ?? "No code"){firm in
                print("attaching firm")
                
                if(firm == "Nil"){
                    var popUpWindow: PopUpWindow!
                    popUpWindow = PopUpWindow(title: "Incorrect Code", text: "Entered Code Does Not Match a Valid Firm", buttontext: "Dismiss")
                    self.present(popUpWindow, animated: true, completion: nil)
                }else{
                    globalData.firm = firm
                }
            }
        }
        
         return true
     }
     
     
     func textFieldDidEndEditing(_ textField: UITextField) {
         //Change label to what was entered
        // updateSaveButtonState()
         self.resignFirstResponder()
         if textField.text == ""{
             Go.isEnabled = false
         }else{
             Go.isEnabled = true
         }
         
     }
     
     
    
     func textFieldDidBeginEditing(_ textField: UITextField) {
        self.activeText = textField
         Go.isEnabled = false
     }
    
}
