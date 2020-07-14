//
//  TreatmentDescriptionInput.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class TreatmentDescriptionInput: UIViewController, UITextViewDelegate {

    @IBOutlet weak var treatmentTextView: UITextView!
    var DoctorInput = Doctor(Name: "", Specialty: "", Provider: Provider(Name: "", Address: "", Phone: ""))
    var ProviderInput = Provider(Name: "", Address: "", Phone: "")
    var DateInput = Date()
    var TreatmentInput = String()
    var server_action = server_handler()
    var first_input = true
    
    @IBOutlet weak var treatmentDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        treatmentDescription.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if(self.first_input == true){
            textView.text = ""
        }
        //textView.backgroundColor = UIColor.systemPink
        self.first_input = false
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        self.resignFirstResponder()
        textView.backgroundColor = UIColor.white
        self.TreatmentInput = treatmentTextView.text
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "segueToCheckMark":
            guard let animationController = segue.destination as? AnimationController else{
                fatalError("Unexpected destination")
            }
            
            globalData.Treatments.append(Treatment(Doctor: self.DoctorInput, Date: self.DateInput, Treatment: self.TreatmentInput, Provider: self.ProviderInput))
            
            globalData.Providers.append(self.ProviderInput)
            
            
            
            self.server_action.insertTreatment(Username: globalData.user, Doctor: globalData.doctorToCSV(Doctor: self.DoctorInput), Treatment: self.TreatmentInput, Date: globalData.dateToString(Date: self.DateInput), Attorney: globalData.firm, Name: globalData.name, Provider: globalData.providerToCSV(provider:self.ProviderInput))
            
                        
        default:
            fatalError("NO hits on segue")
        }

    }
    

}
