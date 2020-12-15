//
//  UserSetUp.swift
//  legal_talk
//
//  Created by Jack on 5/29/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class UserSetUp: UIViewController {
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true  
        super.viewDidLoad()
        print("In user set up")
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toAttorneySetUp":
            guard let setUpAttorney = segue.destination as? AttorneySetUp else{
                fatalError("unexpected destination")
            }
            
        case "toClientSetUp":
            guard let clientSetUp = segue.destination as? ClientSetUp else{
                fatalError("Unexpected destination")
            }
            
            
            
            
        case "toFirmSetUp":
            guard let firmSetUp = segue.destination as? FirmSetUp else {
                fatalError("Unexpected destination")
                
            }
            
            
        default:
            fatalError("NO hits on segue")
        }
    }
    
    
}
