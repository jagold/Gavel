//
//  DocCollectionView.swift
//  legal_talk
//
//  Created by Jack on 8/10/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import PDFKit

private let reuseIdentifier = "docCell"
private let itemsPerRow: CGFloat = 3


class DocCollectionView: UICollectionViewController {
    
    var selectedPDFData = Data()
    var selectedPDF : Document?
    var indexOfPDF : Int?
    

    private let sectionInsets = UIEdgeInsets(top: 50.0,
    left: 50.0,
    bottom: 50.0,
    right: 50.0)


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toPDFView":
            
            print(type(of: segue.destination))
            guard let pdfView = segue.destination as? DocumentViewController else{
                fatalError("Unexpected destination")
            }
            
            pdfView.documentData = self.selectedPDFData
            pdfView.document = self.selectedPDF
            pdfView.indexOfPDF = self.indexOfPDF
            
            
        default:
            fatalError("NO hits on segue")
        }
        

    }
    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return globalData.DocumentList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        
        
        cell.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        let thumbnailView = PDFThumbnailView()
        let pdfView = PDFView()
        
        pdfView.document = PDFDocument(data: globalData.DocumentList[indexPath.row].data)
        pdfView.autoScales = true
           
        thumbnailView.pdfView = pdfView
//        thumbnailView.pdfView?.bounds = cell.bounds
//        thumbnailView.pdfView?.frame = cell.frame
//        thumbnailView.pdfView?.frame = thumbnailView.bounds

        
    //    thumbnailView.pdfView?.layoutMargins = UIEdgeInsets(top: sectionInsets.top, left: 2*sectionInsets.left, bottom: sectionInsets.bottom, right: sectionInsets.right)
        
        
        
        
        
        
        
        cell.sizeToFit()
        
        thumbnailView.thumbnailSize = cell.bounds.size
        
        print("Cell bounds")
        print(cell.frame.midX)
        print("PDF bounds")
        print(thumbnailView.pdfView?.frame.midX)
        
//        thumbnailView.pdfView?.sizeToFit()
        
        
        
        cell.backgroundColor = .black
        cell.addSubview(thumbnailView)
        
       // thumbnailView.centerYAnchor.constraint(equalToSystemSpacingBelow: cell.centerYAnchor, multiplier: 1).isActive = true

        thumbnailView.leftAnchor.constraint(equalToSystemSpacingAfter: cell.leftAnchor, multiplier: 2).isActive = true

        
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    

    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        
        self.selectedPDFData = globalData.DocumentList[indexPath.row].data
        self.selectedPDF = globalData.DocumentList[indexPath.row]
        self.indexOfPDF = indexPath.row
        self.performSegue(withIdentifier: "toPDFView", sender: nil)
        
        
        return true
    }
    

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

//private extension DocCollectionView{
//    func photo(for indexPath: IndexPath) -> PDFThumbnailView{
//        var thumbnailView = PDFThumbnailView()
//        return thumbnailView
//    }
//    
//}




// MARK: - Collection View Flow Layout Delegate


extension DocCollectionView : UICollectionViewDelegateFlowLayout {
  //1
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    //2
    let paddingSpace = (sectionInsets.left) * (itemsPerRow + 1)
    let availableWidth = view.frame.width - paddingSpace
    let widthPerItem = availableWidth / itemsPerRow
    
    
     return CGSize(width: widthPerItem , height: 2*widthPerItem)

  }
  
  //3
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      insetForSectionAt section: Int) -> UIEdgeInsets {
    
    
    return sectionInsets
  }
  
  // 4
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return sectionInsets.left
  }
 
}
 
 

