//
//  DoctorDetail.swift
//  legal_talk
//
//  Created by Jack on 6/9/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class DoctorDetail: UIViewController {
    //MARK: Properties
    var data_model = DataModel()
    var doctor = Doctor(Name: "nil", Phone: "nil", Address: "nil", Specialty: "nil")
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var specialtyLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = doctor.Name
        self.specialtyLabel.text = doctor.Specialty
        self.addressLabel.text = doctor.Address
        self.phoneLabel.text = doctor.Phone
        // Do any additional setup after loading the view.
        
    }
    

    
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    */

}
