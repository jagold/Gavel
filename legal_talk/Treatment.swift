//
//  Treatment.swift
//  legal_talk
//
//  Created by Jack on 5/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation

class Treatment{
    var Doctor: Doctor
    var Date: Date
    var Treatment: String
    
    init(Doctor: Doctor, Date: Date, Treatment: String){
        self.Doctor = Doctor
        self.Date = Date
        self.Treatment = Treatment
    }
    
}
