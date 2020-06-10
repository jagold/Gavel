//
//  ClientSetUp.swift
//  legal_talk
//
//  Created by Jack on 5/29/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ClientSetUp: UIViewController, UITextFieldDelegate {

    var server_action = server_handler()
    var data_model = DataModel()
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var GoButton: UIButton!
    var activeText = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.codeTextField.delegate = self
        self.nameTextField.delegate = self
    
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? ""{
               case "toClientMenu":
                   guard let ClientMenu = segue.destination as? ClientMenu else{
                       fatalError("Unexpected Destination")
                   }
                   
                   ClientMenu.data_model = self.data_model
                   
                   
               default:
                   fatalError("NO match")
               }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.activeText = textField
    }
    
    /*
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == codeTextField){
        self.server_action.getClientAttorney(Code: codeTextField.text ?? "No code"){attorney in
         
         self.data_model.attorney = attorney
            }
        }
        
        if(textField == nameTextField){
            self.data_model.name = nameTextField.text ?? "NO name"
        }
        
    }
    */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           //Hide keyboard
           textField.resignFirstResponder()
        if (self.activeText == codeTextField ){
            print("Start attorney fetch")
            self.server_action.getClientAttorney(Code: codeTextField.text ?? "No code"){attorney in
             print("getting the attorney")
             self.data_model.attorney = attorney
             print(attorney)
                }
            }
            
        if(self.activeText == nameTextField){
            print("Assigning Name")
                self.data_model.name = nameTextField.text ?? "NO name"
            }
           return true
       }
    
    @IBAction func goButtonPressed(_ sender: Any) {
        print("insert initial treatment")
        server_action.insertTreatment(Username: self.data_model.user, Doctor: "Select A Doctor, 420, Space, None", Treatment: "Initial Treatment", Date: "6/3/20", Attorney: self.data_model.attorney, Name: self.data_model.name)
    }
    
    

}
