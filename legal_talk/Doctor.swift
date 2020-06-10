//
//  Doctor.swift
//  legal_talk
//
//  Created by Jack on 5/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation

class Doctor{
    
    var Name: String
    var Phone: String
    var Specialty: String
    var Address: String
    
    init(Name: String, Phone: String, Address: String, Specialty: String) {
        self.Specialty = Specialty
        self.Address = Address
        self.Name = Name
        self.Phone = Phone
    }
    
    
}
