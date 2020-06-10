//
//  TreatmentDescription.swift
//  legal_talk
//
//  Created by Jack on 6/9/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class TreatmentDetail: UIViewController {

    var data_model = DataModel()
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var treatmentLabel: UILabel!
    @IBOutlet weak var doctorLabel: UIButton!
    @IBOutlet weak var providerLabel: UILabel!
    var treatmentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dateLabel.text = self.data_model.dateToString(Date:  self.data_model.Treatments[treatmentIndex].Date)
        self.treatmentLabel.text = self.data_model.Treatments[treatmentIndex].Treatment
        self.doctorLabel.setTitle(self.data_model.Treatments[treatmentIndex].Doctor.Name, for: .normal)
        self.providerLabel.text = "Provider Placeholder"
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? ""{
               case "doctorDetail":
                   guard let DoctorDetail = segue.destination as? DoctorDetail else{
                       fatalError("Unexpected Destination")
                   }
                   
                   DoctorDetail.doctor = self.data_model.Treatments[treatmentIndex].Doctor
                   DoctorDetail.data_model = self.data_model
                   
                   
               default:
                   fatalError("NO match")
               }
    }
    

    
}
