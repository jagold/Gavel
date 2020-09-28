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
    
    var appSyncClient: AWSAppSyncClient?
    var server_action = server_handler()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = false
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        
    }
    
   
    //MARK: Navigation
    //Prepare segues: Send data model to the destination
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {

            case "toLogTreatment":
                
                guard let LogTreatmentController = segue.destination as? ProviderInput else{
                    fatalError("Unexpected Destination")
                }
            
            case "toTreatmentHistory":
                guard let TreatmentHistoryController = segue.destination as? TreatmentHistoryTableController else{
                    fatalError("Unexpected Destination")
                }
            
            case "toLogLimitation":
                guard let LogLimitationController = segue.destination as? LogLimitation else{
                    fatalError("Unexpected Destination")
                }
                
            case "toCalendar":
                guard let CalendarController = segue.destination as? CalendarViewController else{
                    fatalError("Unexpected Destination")
                }
            
            
            case "toScheduleTreatment":
                guard let ScheduleTreatmentController = segue.destination as? ScheduleTreatment else{
                    fatalError("Unexpected Destination")
                }
            
            default:
                fatalError("Segue didn't match")
        }
    }
    
    //Unwind function. Honestly don't know exactly how it works, but it does
    @IBAction func unwindToMenu(sender: UIStoryboardSegue){
        

        
    }
    
    
}

