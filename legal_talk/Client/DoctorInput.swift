//
//  DoctorInput.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class DoctorInput: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    var DoctorInput = Doctor(Name: "", Specialty: "", Provider: Provider(Name: "", Address: "", Phone: ""))
    var ProviderInput = Provider(Name: "", Address: "", Phone: "")
    var triggeredPicker = false
    var tempDoctorList = [Doctor]()
    @IBOutlet weak var doctorPicker: UIPickerView!
    
    override func viewDidLoad() {
        self.doctorPicker.delegate = self
        self.doctorPicker.dataSource = self
        super.viewDidLoad()
        
        tempDoctorList = globalData.Doctors.filter{$0.Provider.Name == ProviderInput.Name}
        

        
        print(tempDoctorList.count)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(tempDoctorList.count == 0){
            self.performSegue(withIdentifier: "toNewDoctor", sender: self)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toSelectDate":
            guard let dateInput = segue.destination as? DateInput else{
                fatalError("Unexpected destination")
            }
            
            
            
            dateInput.ProviderInput = self.ProviderInput
            
            if(self.triggeredPicker == false){
                dateInput.DoctorInput = tempDoctorList[0]
            }else{
                dateInput.DoctorInput = self.DoctorInput
            }
            
            
            
        case "toNewDoctor":
            guard let newDoc = segue.destination as? NewDoctor else{
                fatalError("Unexpected Destination")
            }
            
            newDoc.provider = self.ProviderInput
            
            
        default:
            fatalError("NO hits on segue")
        }
        
    }
    
    
    
    //MARK: UIPicker
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempDoctorList.count
    }
    
      func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
            
        if(tempDoctorList.count == 0){
            return NSAttributedString(string: "No Doctors")
        }else{
          return NSAttributedString(string: tempDoctorList[row].Name)
            
        }
          
      }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.DoctorInput = tempDoctorList[row]
        self.triggeredPicker = true
        
    }
    
    
    //MARK: Unwind
    
    @IBAction func unwindToDoctor(sender: UIStoryboardSegue){
        /*
         Reload the provider stuff maybe????
         */
        doctorPicker.reloadAllComponents()
        viewDidLoad()
        
    }

}
