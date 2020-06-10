//
//  AttorneySetUp.swift
//  legal_talk
//
//  Created by Jack on 5/29/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class AttorneySetUp: UIViewController, UITextFieldDelegate {
    var data_model = DataModel()
    @IBOutlet weak var Go: UIButton!
    @IBOutlet weak var enterFirm: UITextField!
    @IBOutlet weak var enterName: UITextField!
    var server_action = server_handler()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterFirm.delegate = self
        self.enterName.delegate = self
        // Do any additional setup after loading the view.
       // server_action.insertAttorney()
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
            //Create an attorney and go to
            self.server_action.insertAttorney(Name: enterName.text ?? "No name", Firm: enterFirm.text ?? "No firm")
            
            AttorneyMenu.Data_Model = self.data_model
            
            
        default:
            fatalError("NO match")
        }
        
    }
    

    //MARK: Text Field Delegate
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         //Hide keyboard
         textField.resignFirstResponder()
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
         Go.isEnabled = false
     }
    
}
