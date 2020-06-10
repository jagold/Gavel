//
//  ViewController.swift
//  legal_talk
//
//  Created by Jack on 5/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import AWSAppSync


class ClientMedMenu: UIViewController {
    
    //MARK: Properties
    var Data_Model = DataModel()
    var appSyncClient: AWSAppSyncClient?
    var server_action = server_handler()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        
    }
    
   
    //MARK: Navigation
    //Prepare segues: Send data model to the destination
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case "toDoctorList":
                guard let DocListController = segue.destination as? MyDoctorsList else {
                    fatalError("Unexpected Destination")
                }
                DocListController.Data_Model = self.Data_Model
                
            case "toLogTreatment":
                guard let LogTreatmentController = segue.destination as? LogTreatment else{
                    fatalError("Unexpected Destination")
                }
                LogTreatmentController.Data_Model = self.Data_Model
            case "toTreatmentHistory":
                guard let TreatmentHistoryController = segue.destination as? TreatmentHistoryTableController else{
                    fatalError("Unexpected Destination")
                }
                TreatmentHistoryController.Data_Model = self.Data_Model
            default:
                fatalError("Segue didn't match")
        }
    }
    
    //Unwind function. Honestly don't know exactly how it works, but it does
    @IBAction func unwindToMenu(sender: UIStoryboardSegue){
        
        if let sourceViewController = sender.source as? LogTreatment{
            self.Data_Model = sourceViewController.Data_Model
        }else{
        
            if let sourceViewController = sender.source as? MyDoctorsList
                {
                self.Data_Model = sourceViewController.Data_Model
            }
        
        }
        
    }
    
    
}

