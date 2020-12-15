//
//  NewDoctor.swift
//  legal_talk
//
//  Created by Jack on 6/12/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class NewDoctor: UIViewController, UITextFieldDelegate {
    
    
    var provider = Provider(Name: "", Address: "", Phone: "")
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var specialtyField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    var isSchedule = false
    var dateInput = Date()
    var server_action = server_handler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameField.delegate = self
        self.specialtyField.delegate = self
        self.saveButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? ""{
        case "toSelectDate":
            /*
             User is recording a past treatment, go to select date
             */
            
            guard let selectDate = segue.destination as? DateInput else{
                fatalError("Unexpected Destination")
            }
            
            let newDoctor = Doctor(Name: self.nameField.text ?? "No Name",  Specialty: self.specialtyField.text ?? "No Specialty", Provider: self.provider)
            
            globalData.Doctors.append(newDoctor)
            
            selectDate.ProviderInput = self.provider
            selectDate.DoctorInput = newDoctor
            
        case "toAnimationController":
            /*
             User schedules a future treatment
             */
            guard let animationControler = segue.destination as? AnimationController else { fatalError("Unexpected destination")
                
                let newDoctor = Doctor(Name: self.nameField.text ?? "No Name",  Specialty: self.specialtyField.text ?? "No Specialty", Provider: self.provider)
                
                globalData.Doctors.append(newDoctor)
                
                server_action.insertTreatment(Username: globalData.user, Doctor: globalData.doctorToCSV(Doctor: newDoctor), Treatment: "Future Treatment", Date: globalData.dateToString(Date:self.dateInput), Attorney: globalData.firm, Name: globalData.name, Provider: globalData.providerToCSV(provider:self.provider))
                
                
            }
            
        default:
            fatalError("No valid destination")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        if (self.specialtyField.text != "" && self.nameField.text != ""){
            self.saveButton.isEnabled = true
        }
        return true
    }
    
    
    @IBAction func pressSave(_ sender: Any) {
        
        
        //  let newDoc = Doctor(Name: self.nameField.text ?? "No Name",  Specialty: self.specialtyField.text ?? "No Specialty", Provider: self.provider)
        
        //  globalData.Doctors.append(newDoc)
        
        
        if(self.isSchedule == false){
            self.performSegue(withIdentifier: "toSelectDate", sender: self)
        }else{
            //Do the logic to schedule the treatment
            self.performSegue(withIdentifier: "toAnimationController", sender: self)
            
            let newDoctor = Doctor(Name: self.nameField.text ?? "No Name",  Specialty: self.specialtyField.text ?? "No Specialty", Provider: self.provider)
            
            globalData.Doctors.append(newDoctor)
            
            server_action.insertTreatment(Username: globalData.user, Doctor: globalData.doctorToCSV(Doctor: newDoctor), Treatment: "Future Treatment", Date: globalData.dateToString(Date:self.dateInput), Attorney: globalData.firm, Name: globalData.name, Provider: globalData.providerToCSV(provider:self.provider))
            
        }
        
    }
    
}
