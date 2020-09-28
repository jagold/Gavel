//
//  ScheduleDoctor.swift
//  legal_talk
//
//  Created by Jack on 6/27/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ScheduleDoctor: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    
    var scheduledDate = Date()
    var scheduledProvider = Provider(Name: "", Address: "", Phone: "")
    var tempDoctorList = [Doctor]()
    var server_action = server_handler()

    
    var scheduledTreatment = Treatment(Doctor: Doctor(Name: "", Specialty: "", Provider: Provider(Name: "", Address: "", Phone: "")), Date: Date(), Treatment: "", Provider: Provider(Name: "", Address: "", Phone: ""))
    
    @IBOutlet weak var doctorPicker: UIPickerView!
    
  //  var selectedDoctor = Doctor(Name: "", Specialty: "", Provider: "")
    
    var pickedOnce = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doctorPicker.delegate = self
        doctorPicker.dataSource = self
        
        tempDoctorList = globalData.Doctors.filter{$0.Provider.Name == scheduledProvider.Name}
        
        if(tempDoctorList.count == 0){
            self.performSegue(withIdentifier: "toNewDoctor", sender: self)
        } 

    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       super.prepare(for: segue, sender: sender)
       
       switch segue.identifier ?? "" {
       case "toNewDoctor":
           guard let newDoctor = segue.destination as? NewDoctor else{
               fatalError("Unexpected destination")
           }
           
           newDoctor.provider = self.scheduledProvider
           newDoctor.isSchedule = true
           newDoctor.dateInput = self.scheduledDate
           
       case "toAnimationController":
           guard let animationController = segue.destination as? AnimationController else{
               fatalError("Unexpected destination")
           }


        
       default:
           fatalError("NO hits on segue")
       }
        
        
    }
    
    
    
    
    //MARK: UIPickerView
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tempDoctorList.count
    }

    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
          

        return NSAttributedString(string: tempDoctorList[row].Name)
        
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
      //  self.selectedProvider = globalData.Providers[row]
         scheduledTreatment = Treatment(Doctor: tempDoctorList[row], Date: scheduledDate, Treatment: "Future Treatment", Provider: tempDoctorList[row].Provider)
        self.pickedOnce = true
        
    }
    
    @IBAction func pressSave(_ sender: Any) {
        if (pickedOnce == false) {
         scheduledTreatment = Treatment(Doctor: tempDoctorList[0], Date: scheduledDate, Treatment: "Future Treatment", Provider: tempDoctorList[0].Provider)
        }
        
        
        
        server_action.insertTreatment(Username: globalData.user, Doctor: globalData.doctorToCSV(Doctor: scheduledTreatment.Doctor), Treatment: scheduledTreatment.Treatment, Date: globalData.dateToString(Date:scheduledTreatment.Date), Attorney: globalData.firm, Name: globalData.name, Provider: globalData.providerToCSV(provider:scheduledTreatment.Provider)){id in
            
            print(id)
            //Schedule the treatment. Write to server and all that ~jazz~
            notifications.scheduleNotification(treatment: self.scheduledTreatment, notificationType: "upcomingTreatment", treatmentID: id) //Reminder for upcoming treatment
            
            notifications.scheduleNotification(treatment: self.scheduledTreatment, notificationType: "pastTreatment", treatmentID: id) //After the treatment occurs, this notification will ask whether the user went to the doctor
        
        }
        
        globalData.addFutureTreatment(date: scheduledTreatment.Date, treatment: scheduledTreatment)
        
        

        
    }
    
    
    
    @IBAction func unwindToDoctor(sender: UIStoryboardSegue){
        /*
         Reload the provider stuff maybe????
         */
        doctorPicker.reloadAllComponents()
        viewDidLoad()
        
    }
    
}
