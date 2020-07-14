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
    
    var Specialty: String
   
    var Provider: Provider
    
    init(Name: String,  Specialty: String, Provider: Provider) {
        
        self.Specialty = Specialty
        self.Name = Name
        self.Provider = Provider
    }
    
    
}
