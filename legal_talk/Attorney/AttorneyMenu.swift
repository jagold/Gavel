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
    var appSyncClient: AWSAppSyncClient?
    var server_action = server_handler()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        /*
         Fetch Clients will get all the attorneys of a certain firm
         */
        
        
        self.server_action.fetchClients(Firm: globalData.firm){clients in
            print(clients.count)
            globalData.Clients = clients
            
            
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
            
            
        case "toNewClient":
            guard let NewClient = segue.destination as? NewClient else{
                fatalError("Unexpected Destination")
            }
            
            
        default:
            fatalError("No valid destination")
        }
              
        
    }
    
    @IBAction func unwindToAttorneyMenu(sender: UIStoryboardSegue){
        
    
        
    }
        
}
    
    

