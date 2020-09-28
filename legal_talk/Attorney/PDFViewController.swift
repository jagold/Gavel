//
//  PDFViewController.swift
//  legal_talk
//
//  Created by Jack on 7/20/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import PDFKit

class PDFViewController: UIViewController, UIGestureRecognizerDelegate {

    
    
    //Put the pdf data in document data
    public var documentData: Data?
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
        
        
      if let data = documentData {
        self.pdfView.document = PDFDocument(data: data)
        self.pdfView.autoScales = true
      }
        self.pdfView.isUserInteractionEnabled = true
    
       // pdfView.selectAll(nil)
        
        

        
    }
    
    
    @IBAction func savePDF(_ sender: Any) {
        let vc = UIActivityViewController(activityItems: [self.documentData], applicationActivities: [])
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func signPDF(_ sender: Any) {

        guard let selections = self.pdfView.currentSelection?.selectionsByLine()
            else { return }

        
        // Loop over the selections line by line
        selections.forEach({ selection in
            // Loop over the pages encompassed by each selection
            selection.pages.forEach({ page in
                // Create a new highlight annotation with the selection's bounds and add it to the page
                let signiture = globalData.name
                
                let annotation = PDFAnnotation( bounds: selection.bounds(for: page), forType: .freeText, withProperties: nil)
                annotation.isHighlighted = false
                annotation.contents = signiture
                
                page.addAnnotation(annotation)
            })
        })
        
        self.documentData = self.pdfView.document?.dataRepresentation()
        
    }
    

}
