//
//  ClientMenu.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins
import PDFKit

class ClientMenu: UIViewController {
    
    var server_action = server_handler()
    @IBOutlet weak var homeLabel: UILabel!
    
    var imageData = Data()
    var pdfData = Data()
    let group = DispatchGroup()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        self.tabBarController?.navigationItem.hidesBackButton = true
        
        notifications.userRequest()
        // Do any additional setup after loading the view.
        
        //  uploadData()
        // uploadFile()

        
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
            
        case "toGeneratePDF":
            guard let generatePDF = segue.destination as? PDFViewController else{
                fatalError("Unexpected Destination")
            }
            
            generatePDF.documentData = self.pdfData
            
            
        case "toCalendar":
            guard let calendar = segue.destination as? CalendarViewController else{
                fatalError("Unexpected destination")
            }
            
        case "toLegal":
            guard let legal = segue.destination as? LegalInfo else{
                fatalError("Unexpected destination")
            }
            
            
        default:
            fatalError("NO hits on segue")
        }
        
        
        
    }
    
    
    
    
}
