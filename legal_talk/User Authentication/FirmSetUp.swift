//
//  FirmSetUp.swift
//  legal_talk
//
//  Created by Jack on 6/13/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class FirmSetUp: UIViewController, UITextFieldDelegate {
    
    var server_action = server_handler()
    @IBOutlet weak var firmName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firmName.delegate = self
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "registerFirm":
            guard let firmMenu = segue.destination as? FirmMenu else{
                fatalError("unexpected destination")
            }
            
            
            
            
        default:
            fatalError("NO hits on segue")
        }
        
        
    }
    
    @IBAction func registerFirm(_ sender: Any) {
        self.server_action.insertFirm(userName: globalData.user, firmName: self.firmName.text ?? "No Name Entered")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
    }
    
}
