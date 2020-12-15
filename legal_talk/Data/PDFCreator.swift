//
//  PDFCreator.swift
//  legal_talk
//
//  Created by Jack on 7/20/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class PDFCreator: NSObject {
    
    lazy var pageWidth : CGFloat  = {
        return 8.5 * 72.0
    }()

    lazy var pageHeight : CGFloat = {
        return 11 * 72.0
    }()

    lazy var pageRect : CGRect = {
        CGRect(x: 0, y: 0, width: pageWidth, height: pageHeight)
    }()

    lazy var marginPoint : CGPoint = {
        return CGPoint(x: 10, y: 10)
    }()

    lazy var marginSize : CGSize = {
        return CGSize(width: self.marginPoint.x * 2 , height: self.marginPoint.y * 2)
    }()


    func prepareDocument() -> Data {
        
        //1
        let pdfMetaData = [
          kCGPDFContextCreator: "PDF Creator",
          kCGPDFContextAuthor: "Pratik Sodha",
          kCGPDFContextTitle: "My PDF"
        ]

        //2
        let format = UIGraphicsPDFRendererFormat()
        format.documentInfo = pdfMetaData as [String: Any]

        //3
        let renderer = UIGraphicsPDFRenderer(bounds: pageRect, format: format)

        //5
        let data = renderer.pdfData { (context) in

            //6
            self.addText(context: context)
        }

        return data
        
        
        return Data()
    }
    
    
    func prepareData() -> Data {
        //1
        let pdfMetaData = [
          kCGPDFContextCreator: "PDF Creator",
            kCGPDFContextAuthor: globalData.user,
          kCGPDFContextTitle: "Client History PDF"
        ]

        //2
        let format = UIGraphicsPDFRendererFormat()
        format.documentInfo = pdfMetaData as [String: Any]

        //3
        let renderer = UIGraphicsPDFRenderer(bounds: pageRect, format: format)

        //5
        let data = renderer.pdfData { (context) in

            //6
            self.addText(context: context)
        }

        return data
    }

    

    
    @discardableResult
    func addText( context : UIGraphicsPDFRendererContext) -> CGFloat {
        
        
        /*
         Create Text out of globalData
         
         NAME
         Loop through treatments and create a little entry for each
         Every provider and their doctors
         Loop through limitations and create a little entry for each
         */

        // 1
        let textFont = UIFont.systemFont(ofSize: 12.0, weight: .regular)

        // 2
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .natural
        paragraphStyle.lineBreakMode = .byWordWrapping

        // 3
        let textAttributes = [
            NSAttributedString.Key.paragraphStyle: paragraphStyle,
            NSAttributedString.Key.font: textFont
        ]

        //4
        
        
        /*
         Format the text. Create a different textFont
         */
        
        let currentText = CFAttributedStringCreate(nil,
                                                   createText() as CFString,
                                                   textAttributes as CFDictionary)
        
        
        
        //5
        let framesetter = CTFramesetterCreateWithAttributedString(currentText!)

        //6
        var currentRange = CFRangeMake(0, 0)
        var currentPage = 0
        var done = false
        repeat {

            //7
            /* Mark the beginning of a new page.*/
            context.beginPage()

            //8
            /*Draw a page number at the bottom of each page.*/
            currentPage += 1
            drawPageNumber(currentPage)


            //9
            /*Render the current page and update the current range to
              point to the beginning of the next page. */
            currentRange = renderPage(currentPage,
                                      withTextRange: currentRange,
                                      andFramesetter: framesetter)

            //10
            /* If we're at the end of the text, exit the loop. */
            if currentRange.location == CFAttributedStringGetLength(currentText) {
                done = true
            }

        } while !done

        return CGFloat(currentRange.location + currentRange.length)
    }
    
    func createText() -> String{
        var currentString = String()
        
        
        currentString += "\nTREATMENTS\n"
        for treatment in globalData.Treatments {
            let date = globalData.dateToString(Date: treatment.Date)
            let doctorName = treatment.Doctor.Name
            let providerName = treatment.Provider.Name
            let treatmentDescription = treatment.Treatment
            currentString += date + " - " + doctorName + ", " + providerName + "\n" + treatmentDescription + "\n\n"
            
        }
        
        currentString += "\nPROVIDERS\n"
        for provider in globalData.Providers {
            let providerName = provider.Name
            let providerAddress = provider.Address
            let providerPhone = provider.Phone
            currentString += providerName + " - " + providerAddress + ", " + providerPhone + "\n"
            
            currentString += "       " + "DOCTORS"
            for doctor in globalData.Doctors {
                
                
                if doctor.Provider.Name == provider.Name{
                    currentString += "\n       " + doctor.Name + ", " + doctor.Specialty
                }
                
            }
            currentString += "\n\n"
        }
        
        currentString += "\nLIMITATIONS\n"
        
        for limitation in globalData.limitations {
            currentString += limitation.description + "\n"
        }
        
        return currentString
        
    }

    func renderPage(_ pageNum: Int, withTextRange currentRange: CFRange, andFramesetter framesetter: CTFramesetter?) -> CFRange {
        var currentRange = currentRange
        // Get the graphics context.
        let currentContext = UIGraphicsGetCurrentContext()

        // Put the text matrix into a known state. This ensures
        // that no old scaling factors are left in place.
        currentContext?.textMatrix = .identity

        // Create a path object to enclose the text. Use 72 point
        // margins all around the text.
        let frameRect = CGRect(x: self.marginPoint.x, y: self.marginPoint.y, width: self.pageWidth - self.marginSize.width, height: self.pageHeight - self.marginSize.height)
        let framePath = CGMutablePath()
        framePath.addRect(frameRect, transform: .identity)

        // Get the frame that will do the rendering.
        // The currentRange variable specifies only the starting point. The framesetter
        // lays out as much text as will fit into the frame.
        let frameRef = CTFramesetterCreateFrame(framesetter!, currentRange, framePath, nil)

        // Core Text draws from the bottom-left corner up, so flip
        // the current transform prior to drawing.
        currentContext?.translateBy(x: 0, y: self.pageHeight)
        currentContext?.scaleBy(x: 1.0, y: -1.0)

        // Draw the frame.
        CTFrameDraw(frameRef, currentContext!)

        // Update the current range based on what was drawn.
        currentRange = CTFrameGetVisibleStringRange(frameRef)
        currentRange.location += currentRange.length
        currentRange.length = CFIndex(0)

        return currentRange
    }

    func drawPageNumber(_ pageNum: Int) {

        let theFont = UIFont.systemFont(ofSize: 20)

        let pageString = NSMutableAttributedString(string: "Page \(pageNum)")
        pageString.addAttribute(NSAttributedString.Key.font, value: theFont, range: NSRange(location: 0, length: pageString.length))

        let pageStringSize =  pageString.size()

        let stringRect = CGRect(x: (pageRect.width - pageStringSize.width) / 2.0,
                                y: pageRect.height - (pageStringSize.height) / 2.0 - 15,
                                width: pageStringSize.width,
                                height: pageStringSize.height)

        pageString.draw(in: stringRect)

    }
    
    func drawSignature(location: CGPoint){
        
        let theFont = UIFont.boldSystemFont(ofSize: 28)
        
        let sigString = NSMutableAttributedString(string: globalData.name)
        sigString.addAttribute(NSAttributedString.Key.font, value: theFont, range: NSRange(location: 0, length: sigString.length))
        
        let sigStringSize = sigString.size()
        
        let stringRect = CGRect(x: location.x, y: location.y, width: sigStringSize.width, height: sigStringSize.height)
        
        sigString.draw(at: location)
        
        sigString.draw(in: stringRect)
        
    }
    

}
