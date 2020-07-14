//
//  FirmMenu.swift
//  legal_talk
//
//  Created by Jack on 6/13/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class FirmMenu: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toGenerateCode":
            guard let generateCode = segue.destination as? GenerateFirmCode else{
                fatalError("unexpected destination")
            }
        
        
        case "toAttorneyList":
            guard let attorneyList = segue.destination as? ListAttorneysTable else{
                fatalError("unexpected destination")
            }
            
        default:
            fatalError("NO hits on segue")
        }
    }
    

}
