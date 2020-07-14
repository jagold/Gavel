//
//  Client.swift
//  legal_talk
//
//  Created by Jack on 5/26/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation

class Client{
    
    var Name: String
    var Phone: String
    var Description: String
    var Username: String
    /*
     Need more client properties
     Injuries? Ask Rob
     */
    
    init(Name: String, Phone: String, Description: String, Username: String) {
        self.Name = Name
        self.Phone = Phone
        self.Description = Description
        self.Username = Username
    }
}
