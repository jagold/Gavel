//
//  NewClient.swift
//  legal_talk
//
//  Created by Jack on 5/25/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class NewClient: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    var server_action = server_handler()

    @IBOutlet weak var ClientCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        globalData.randomString(length: 10)
        server_action.updateCode(currentCode: globalData.currrent_code)
        ClientCode.text = "Client sign-up ID: " + globalData.currrent_code
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "unwindToMenu":
            guard let attorneyMenu = segue.destination as? AttorneyMenu else{
                fatalError("Unexpected Destination")
            }
            
            //Refresh clients in case user signs up
            self.server_action.fetchClients(Firm: globalData.user){clients in
                globalData.Clients = clients
            }
            
            
        default:
            fatalError("Unexpected destination")
        }
    }
    

}
