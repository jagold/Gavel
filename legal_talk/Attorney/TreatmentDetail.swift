//
//  TreatmentDescription.swift
//  legal_talk
//
//  Created by Jack on 6/9/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class TreatmentDetail: UIViewController, HalfModalPresentable {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var treatmentLabel: UILabel!
    @IBOutlet weak var doctorLabel: UIButton!
    @IBOutlet weak var providerLabel: UILabel!
    var treatmentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.dateLabel.text = "Date: " + globalData.dateToString(Date:globalData.Treatments[treatmentIndex].Date)
        self.treatmentLabel.text = "Treatment: " + globalData.Treatments[treatmentIndex].Treatment
        
               
        self.doctorLabel.setTitle("Doctor: " + globalData.Treatments[treatmentIndex].Doctor.Name, for: .normal)
        self.providerLabel.text = "Provider: " + globalData.Treatments[treatmentIndex].Provider.Name
        //self.providerLabel.isHidden = 
        
        self.view.layoutIfNeeded()
    }
    

    override func viewDidAppear(_ animated: Bool) {
        
        self.view.layoutIfNeeded()
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
                   
                   DoctorDetail.doctor = globalData.Treatments[treatmentIndex].Doctor
                   
                   
                   
               default:
                   fatalError("NO match")
               }
    }
    

    
    //MARK: Top Bar Button Actions
    
    @IBAction func maximizeView(_ sender: Any) {
        maximizeToFullScreen()
    }
    
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        if let delegate = navigationController?.transitioningDelegate as? HalfModalTransitioningDelegate {
            delegate.interactiveDismiss = false
        }
        
        dismiss(animated: true, completion: nil)
    }
    

    
    
    
    
}
