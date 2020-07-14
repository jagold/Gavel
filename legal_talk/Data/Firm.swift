//
//  Firm.swift
//  legal_talk
//
//  Created by Jack on 6/11/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation

class Firm {
    var current_code: String
    var name: String
    var attorneys: [String]
    
    init(current_code: String, name: String) {
        self.current_code = current_code
        self.name = name
        self.attorneys = [String()]
    }
    
}
