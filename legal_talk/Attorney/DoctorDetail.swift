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
    var doctor = Doctor(Name: "nil", Specialty: "nil", Provider: Provider(Name: "", Address: "", Phone: ""))
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var specialtyLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var providerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = "Name: " + doctor.Name
        self.specialtyLabel.text = "Specialty: " + doctor.Specialty
        self.addressLabel.text = "Address: " + doctor.Provider.Address
        self.phoneLabel.text = "Phone: " + doctor.Provider.Phone
        self.providerLabel.text = "Provider: " + doctor.Provider.Name
        // Do any additional setup after loading the view.
        
    }
    

    
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    */

}
