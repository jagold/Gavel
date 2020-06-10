//
//  ClientMenu.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ClientMenu: UIViewController {

    var data_model = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toClientMedMenu":
            guard let medMenu = segue.destination as? ClientMedMenu else{
                fatalError("unexpected destination")
            }
            medMenu.Data_Model = self.data_model
          
        default:
            fatalError("NO hits on segue")
        }
        
        
        
    }
    

}
