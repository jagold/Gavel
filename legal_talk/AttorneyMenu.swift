//
//  AttorneyMenu.swift
//  legal_talk
//
//  Created by Jack on 5/25/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import AWSAppSync
class AttorneyMenu: UIViewController {

    //MARK: Properties
    @IBOutlet weak var clientListButton: UIButton!
    @IBOutlet weak var registerNewClientButton: UIButton!
    var Data_Model = DataModel()
    var appSyncClient: AWSAppSyncClient?
    var server_action = server_handler()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true  
        self.server_action.fetchClients(Attorney: self.Data_Model.user){clients in
            
            self.Data_Model.Clients = clients
            
        }
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? ""{
        case "toClientList":
            guard let ClientList = segue.destination as? ClientList else{
                fatalError("Unexpected Destination")
            }
            ClientList.Data_Model = self.Data_Model
            
        case "toNewClient":
            guard let NewClient = segue.destination as? NewClient else{
                fatalError("Unexpected Destination")
            }
            NewClient.Data_Model = self.Data_Model
            
        default:
            fatalError("No valid destination")
        }
              
        
    }
    
    @IBAction func unwindToAttorneyMenu(sender: UIStoryboardSegue){
        
        if let sourceViewController = sender.source as? NewClient{
            self.Data_Model = sourceViewController.Data_Model
        }
        
    }
        
}
    
    

