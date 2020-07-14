//
//  ScheduleTreatment.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ScheduleTreatment: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toScheduleProvider":
            guard let scheduleProvider = segue.destination as? ScheduleProvider else{
                fatalError("Unexpected destination")
            }
            
  
            scheduleProvider.scheduledDate = self.datePicker.date
            
        default:
            fatalError("NO hits on segue")
        }
    }
}
    


