//
//  ProviderInput.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ProviderInput: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    
    var ProviderInput = Provider(Name: "", Address: "", Phone: "")
    var triggeredPicker = false
    @IBOutlet weak var providerPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        providerPicker.delegate = self
        providerPicker.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(globalData.Treatments.count)
        if(globalData.Providers.count == 0){
            self.performSegue(withIdentifier: "toNewProvider", sender: nil)
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toSelectDoctor":
            guard let doctorInput = segue.destination as? DoctorInput else{
                fatalError("Unexpected destination")
            }
            

            
            if(self.triggeredPicker == false){
                doctorInput.ProviderInput = globalData.Providers[0]
            }else{
                doctorInput.ProviderInput = self.ProviderInput
            }
            

            
        case "toNewProvider":
            guard let newProvider = segue.destination as? NewProvider else{
                fatalError("Unexpected Destination")
            }
            
            
        default:
            fatalError("NO hits on segue")
        }
    }
    

    //MARK: UIPicker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return globalData.Providers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.ProviderInput = globalData.Providers[row]
        self.triggeredPicker = true
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return globalData.Providers[row].Name
    }
    
    
    //MARK: Unwind
    
    @IBAction func unwindToProvider(sender: UIStoryboardSegue){
        /*
         Reload the provider stuff maybe????
         */
        providerPicker.reloadAllComponents()
        
    }
    
    
    
}
