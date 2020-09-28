//
//  Document.swift
//  legal_talk
//
//  Created by Jack on 8/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation


class Document{
    
    var data: Data
    var key: String
    
    init(data: Data, key: String) {
        self.data = data
        self.key = key
    }
}
