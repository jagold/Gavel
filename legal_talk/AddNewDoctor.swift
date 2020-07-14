//
//  AddNewDoctor.swift
//  legal_talk
//
//  Created by Jack on 5/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import AWSAppSync

class AddNewDoctor: UIViewController, UITextFieldDelegate {

    var Data_Model = DataModel()
    var new_Doc : Doctor?
    var appSyncClient: AWSAppSyncClient?
    var nameArray:NSMutableArray = NSMutableArray()
    var descriptionArray:NSMutableArray = NSMutableArray()
    
    @IBOutlet weak var doctorName: UITextField!
    @IBOutlet weak var doctorSpecialty: UITextField!
    @IBOutlet weak var doctorPhoneNumber: UITextField!
    @IBOutlet weak var doctorAddress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        doctorName.delegate = self
        doctorSpecialty.delegate = self
        doctorPhoneNumber.delegate = self
        doctorAddress.delegate = self
        // Do any additional setup after loading the view.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide keyboard
        textField.resignFirstResponder()
        return true
    }

    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
         switch segue.identifier ?? "" {
         case "unwindToList":
            /*
             guard let listController = segue.destination as? MyDoctorsList else {
                 fatalError("Can't init dest controller")
             }
             */
        new_Doc = newDoc()
         default:
            fatalError("Unexpected destination")
        }

    }
    
    func newDoc() -> Doctor {
        return Doctor(Name: doctorName.text ?? "", Specialty: doctorSpecialty.text ?? "", Provider: Provider(Name: <#T##String#>, Address: <#T##String#>, Phone: <#T##String#>))
    }
    
    

}
