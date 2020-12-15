//
//  DateInput.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class DateInput: UIViewController {
    
    var DoctorInput = Doctor(Name: "", Specialty: "", Provider: Provider(Name: "", Address: "", Phone: ""))
    var ProviderInput = Provider(Name: "", Address: "", Phone: "")
    // var DateInput = Date()
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toTreatmentInfo":
            guard let treatmentInfo = segue.destination as? TreatmentDescriptionInput else{
                fatalError("Unexpected destination")
            }
            
            
            
            treatmentInfo.DoctorInput = self.DoctorInput
            treatmentInfo.ProviderInput = self.ProviderInput
            
            treatmentInfo.DateInput = self.datePicker.date
            
        default:
            fatalError("NO hits on segue")
        }
    }
    
}
