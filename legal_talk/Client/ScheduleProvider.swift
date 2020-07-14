//
//  ScheduleProvider.swift
//  legal_talk
//
//  Created by Jack on 6/29/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ScheduleProvider: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    

    @IBOutlet weak var providerPicker: UIPickerView!
    var selectedProvider = Provider(Name: "", Address: "", Phone: "")
    var scheduledDate = Date()
    var pickedOnce = false
    override func viewDidLoad() {
        super.viewDidLoad()

        providerPicker.delegate = self
        providerPicker.dataSource = self
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toScheduleDoctor":
            guard let scheduleDoctor = segue.destination as? ScheduleDoctor else{
                fatalError("Unexpected destination")
            }
            
            
            if (self.pickedOnce == false){
                self.selectedProvider = globalData.Providers[0]
            }
            scheduleDoctor.scheduledDate = self.scheduledDate
            scheduleDoctor.scheduledProvider = self.selectedProvider
            
            
        case "toNewProvider":
            guard let newProvider = segue.destination as? NewProvider else{
                fatalError("Unexpected destination")
            }
            
            newProvider.isSchedule = true
            newProvider.dateInput = self.scheduledDate
            
     
            
        default:
            fatalError("NO hits on segue")
        }
        
    }
     
    
    
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
         1
     }
     
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return globalData.Providers.count
     }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        
        return NSAttributedString(string: globalData.Providers[row].Name)
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.selectedProvider = globalData.Providers[row]
        self.pickedOnce = true
        
    }
    
    @IBAction func pressSave(_ sender: Any) {

   
    }
    
    
    //MARK: Unwind
    
    @IBAction func unwindToProvider(sender: UIStoryboardSegue){
        
        providerPicker.reloadAllComponents()
        
    }
    
}
