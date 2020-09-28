//
//  PDFHandler.swift
//  legal_talk
//
//  Created by Jack on 8/6/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation
import PDFKit

class PDFHandler{
    
    
  static func returnPDFFromData(data : Data) -> PDFDocument {
        
        return PDFDocument(data: data)!
    }
    
    
    
    
    
    
    
    
    
}
