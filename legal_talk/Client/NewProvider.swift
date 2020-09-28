//
//  NewProvider.swift
//  legal_talk
//
//  Created by Jack on 6/12/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class NewProvider: UIViewController, UITextFieldDelegate {

    var server_action = server_handler()
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    var isSchedule = false
    var dateInput = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        addressField.delegate = self
        phoneField.delegate = self
        self.saveButton.isEnabled = false
        if(globalData.Treatments.count == 0){
            navigationItem.hidesBackButton = true
        }else{
            navigationItem.hidesBackButton = false
        }

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? ""{
   
            
        case "toNewDoctor":
           // guard let ProviderInput = segue.destination as? ProviderInput else{
           //     fatalError("Unexpected Destination")
          //  }

            guard let newDoctor = segue.destination as? NewDoctor else{
                fatalError("Unexpected destination")
            }

            let newProvider = Provider(Name: self.nameField.text ?? "No name", Address: self.addressField.text ?? "No Address", Phone: self.phoneField.text ?? "No Phone")
            
            
            newDoctor.provider = newProvider
            
            globalData.Providers.append(newProvider)
            
            
          
            newDoctor.isSchedule = self.isSchedule
        

        default:
            fatalError("No valid destination")
        }
        
    }
    
    
    
    // MARK: UITextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if(self.addressField.text != "" && self.nameField.text != "" && self.phoneField.text != ""){
            self.saveButton.isEnabled = true
        }
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.saveButton.isEnabled = false
    }
    
    
    /*
     need to do the unwind thing
     */
    

    
    
}
