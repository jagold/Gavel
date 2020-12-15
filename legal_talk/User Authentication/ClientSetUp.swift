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
            guard let ClientMenu = segue.destination as? UITabBarController else{
                fatalError("Unexpected Destination")
            }
            
            
            
            
        default:
            fatalError("NO match")
        }
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.activeText = textField
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide keyboard
        textField.resignFirstResponder()
        if (self.activeText == codeTextField ){
            print("Start attorney fetch")
            /*
             Following will be changed to getClientFirm
             */
            self.server_action.getClientAttorney(Code: codeTextField.text ?? "No code"){firm in
                print("getting the attorney")
                if(firm == "Nil"){
                    var popUpWindow: PopUpWindow!
                    popUpWindow = PopUpWindow(title: "Incorrect Code", text: "Entered Code Does Not Match a Valid Firm", buttontext: "Dismiss")
                    self.present(popUpWindow, animated: true, completion: nil)
                }else{
                    globalData.firm = firm
                }
                
            }
        }
        
        if(self.activeText == nameTextField){
            print("Assigning Name")
            globalData.name = nameTextField.text ?? "NO name"
        }
        return true
    }
    
    @IBAction func goButtonPressed(_ sender: Any) {
        print("insert initial treatment")
        server_action.insertTreatment(Username: globalData.user, Doctor: "Select A Doctor, 420", Treatment: "Initial Treatment", Date: "6/3/20", Attorney: globalData.firm  , Name: globalData.name, Provider: "Your Providers, Provider, Yeet")
    }
    
    
    
}
