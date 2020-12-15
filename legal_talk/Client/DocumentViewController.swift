//
//  DocumentViewController.swift
//  legal_talk
//
//  Created by Jack on 8/14/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import PDFKit

class DocumentViewController: UIViewController {
    
    
    //Put the pdf data in document data
    public var documentData: Data?
    public var document: Document?
    public var indexOfPDF: Int?
    var pdfView: PDFView!
    
    var pdfCreator = PDFCreator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.isUserInteractionEnabled = true
        
        self.pdfView = PDFView()
        
        
        self.pdfView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(self.pdfView)
        
        self.pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        self.pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        if let data = document?.data {
            self.pdfView.document = PDFDocument(data: data)
            self.pdfView.autoScales = true
        }
        self.pdfView.isUserInteractionEnabled = true
        
        // pdfView.selectAll(nil)
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    @IBAction func pressButton(_ sender: Any) {
        
        guard let selections = self.pdfView.currentSelection?.selectionsByLine()
        else { return }
        
        
        // Loop over the selections line by line
        selections.forEach({ selection in
            // Loop over the pages encompassed by each selection
            selection.pages.forEach({ page in
                // Create a new highlight annotation with the selection's bounds and add it to the page
                let signature = globalData.name
                
                
                
                let annotation = PDFAnnotation( bounds: selection.bounds(for: page), forType: .freeText, withProperties: nil)
                
                print("before")
                print(annotation.bounds.midX)
                print(annotation.bounds.midY)
                
                
                annotation.bounds =  annotation.bounds.applying(CGAffineTransform(rotationAngle: 90))
                print(annotation.bounds.midX)
                print(annotation.bounds.midY)
                annotation.isHighlighted = false
                annotation.contents = signature
                page.addAnnotation(annotation)
            })
        })
        
        self.documentData = self.pdfView.document?.dataRepresentation()
        self.document!.data = self.pdfView.document?.dataRepresentation() as! Data
        
        globalData.DocumentList[self.indexOfPDF!].data = (self.pdfView.document?.dataRepresentation())!
        /*
         Save the changed document to globalData
         */
    }
    
    
}
