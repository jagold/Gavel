//
//  LogTreatment.swift
//  legal_talk
//
//  Created by Jack on 5/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import Combine

class LogTreatment: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate,UITextFieldDelegate {

    //MARK: Properties
    //Need to implement the actual logging of the treatment
    //FirstResponder stuff with the text box (add outlet)
    //Add the datepicker as an outlet
    //Get output from the pickers
    @IBOutlet weak var doctor_picker: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var enterTreatmentField: UITextField!
    @IBOutlet weak var DateAndTreatmentLabel: UILabel!
    @IBOutlet weak var treatmentLabel: UILabel!
    @IBOutlet weak var doctorNameLabel: UILabel!
    //Make unwind to list and add to the list
    @IBOutlet weak var pressSave: UIBarButtonItem!
    
    var Data_Model = DataModel()
    var newTreatment : Treatment?
    var treatmentDate : Date?
    var Doctor : String?
    var treatmentReceived : String?
    var server_actions = server_handler()
    
    
    //MARK: Set Up
    override func viewDidLoad() {
        enterTreatmentField.delegate = self
        super.viewDidLoad()
        self.doctor_picker.delegate = self
        self.doctor_picker.dataSource = self
        pressSave.isEnabled = false
        pickerView( self.doctor_picker, didSelectRow: 0, inComponent: 0)
       
        
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toMenuFromLog":
            guard let mainMenuController = segue.destination as? ClientMedMenu, let new_treat = self.newTreatment else {
                fatalError("Unexpected Destination")
            }
            
            self.Data_Model.Treatments += [new_treat]
        
            mainMenuController.Data_Model = self.Data_Model
            
            self.server_actions.insertTreatment(Username: self.Data_Model.user , Doctor: self.Data_Model.doctorToCSV(Doctor: new_treat.Doctor), Treatment: new_treat.Treatment, Date: self.Data_Model.dateToString(Date: new_treat.Date), Attorney: self.Data_Model.firm , Name: self.Data_Model.name, Provider: "Hardcoded Provider")
            
            
        default:
            fatalError("Segue didn't match")
        }
        
        
    }
    
    
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide keyboard
        textField.resignFirstResponder()
        return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //Change label to what was entered
       // updateSaveButtonState()
        self.resignFirstResponder()
        if textField.text == ""{
            pressSave.isEnabled = false
        }else{
            pressSave.isEnabled = true
        }
        
    }
    
    
   
    func textFieldDidBeginEditing(_ textField: UITextField) {
        pressSave.isEnabled = false
    }
    
    
    //MARK: Picker Data Source
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return Data_Model.Doctors.count
        
        
    }
    

    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
  
        return NSAttributedString(string: Data_Model.Doctors[row].Name)
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        newTreatment = Treatment(Doctor: Data_Model.Doctors[row], Date: datePicker.date, Treatment: enterTreatmentField.text ?? "")
        
    }
    
}
