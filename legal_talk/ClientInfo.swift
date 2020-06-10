//
//  ClientInfo.swift
//  legal_talk
//
//  Created by Jack on 6/7/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ClientInfo: UIViewController {
    
    var data_model = DataModel()
    var clientUsername = String()
    var server_action = server_handler()
    
    @IBOutlet weak var clientName: UILabel!
    var nameLabel: String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        clientName.text = nameLabel
        
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toClientsHistory":
            guard let clientHistory = segue.destination as? ClientsHistory else{
                fatalError("unexpected destination")
            }
            
            clientHistory.Data_Model = self.data_model
            
    
            clientHistory.currentClient = self.clientUsername
            
                 
        default:
            fatalError("NO hits on segue")
        }
    }
    

}
