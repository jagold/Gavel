//
//  ClientMenu.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import Amplify
import AmplifyPlugins
import PDFKit

class ClientMenu: UIViewController {
    
    var server_action = server_handler()
    @IBOutlet weak var homeLabel: UILabel!
    
    var imageData = Data()
    var pdfData = Data()
    let group = DispatchGroup()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        self.tabBarController?.navigationItem.hidesBackButton = true
        
        notifications.userRequest()
        // Do any additional setup after loading the view.
        
        //  uploadData()
        // uploadFile()
        server_action.getDocumentKeys(){docData, docList in
            globalData.documents = docData
            globalData.DocumentList = docList
            
        }
        
        
        /*
         self.group.enter()
         downloadData()
         
         self.group.notify(queue: .main){
         //            let image = UIImage(data: self.imageData)
         //            print(self.imageData)
         //            var imageView : UIImageView!
         //            imageView = UIImageView(frame: self.view.bounds)
         //            imageView.contentMode =  UIView.ContentMode.scaleAspectFill
         //            imageView.clipsToBounds = true
         //            imageView.image = image
         //            imageView.center = self.view.center
         //            self.view.addSubview(imageView)
         print("done")
         }
         
         */
        
        
        
        
        
        
        
    }
    
    
    func uploadData() {
        let dataString = "Example file contents"
        //    let data = dataString.data(using: .utf8)!
        let data = #imageLiteral(resourceName: "Gavel").pngData()!
        _ = Amplify.Storage.uploadData(key: "ExampleImage", data: data,
                                       progressListener: { progress in
                                        print("Progress: \(progress)")
                                       }, resultListener: { (event) in
                                        switch event {
                                        case .success(let data):
                                            print("Completed: \(data)")
                                        case .failure(let storageError):
                                            print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                                        }
                                       })
    }
    
    func uploadFile(){
        let dataString = "My Data"
        let fileNameKey = "myFile.doc"
        let filename = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            .appendingPathComponent(fileNameKey)
        do {
            try dataString.write(to: filename, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("Failed to write to file \(error)")
        }
        
        _ = Amplify.Storage.uploadFile(key: fileNameKey, local: filename,
                                       progressListener: { progress in
                                        print("Progress: \(progress)")
                                       }, resultListener: { event in
                                        switch event {
                                        case let .success(data):
                                            print("Completed: \(data)")
                                        case let .failure(storageError):
                                            print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                                        }
                                       })
    }
    
    
    func downloadData(){
        _ = Amplify.Storage.downloadData(key: "ExampleImage",
                                         progressListener: { progress in
                                            print("Progress: \(progress)")
                                         }, resultListener: { (event) in
                                            switch event {
                                            case let .success(data):
                                                print("Completed: \(data)")
                                                self.imageData = data
                                                self.group.leave()
                                            case let .failure(storageError):
                                                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                                            }
                                         })
    }
    
    func downloadFile(){
        let downloadToFileName = FileManager.default.urls(for: .documentDirectory,
                                                          in: .userDomainMask)[0]
            .appendingPathComponent("myFile.txt")
        _ = Amplify.Storage.downloadFile(key: "myKey", local: downloadToFileName,
                                         progressListener: { progress in
                                            print("Progress: \(progress)")
                                         }, resultListener: { event in
                                            switch event {
                                            case .success:
                                                print("Completed")
                                            case .failure(let storageError):
                                                print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                                            }
                                         })
    }
    
    
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "toClientMedMenu":
            guard let medMenu = segue.destination as? ClientMedMenu else{
                fatalError("unexpected destination")
            }
            
        case "toGeneratePDF":
            guard let generatePDF = segue.destination as? PDFViewController else{
                fatalError("Unexpected Destination")
            }
            
            generatePDF.documentData = self.pdfData
            
            
        case "toDocuments":
            guard let documents = segue.destination as? DocCollectionView else{
                fatalError("Unexpected destination")
            }
            
        case "toCalendar":
            guard let calendar = segue.destination as? CalendarViewController else{
                fatalError("Unexpected destination")
            }
            
        case "toLegal":
            guard let legal = segue.destination as? LegalInfo else{
                fatalError("Unexpected destination")
            }
            
            
        default:
            fatalError("NO hits on segue")
        }
        
        
        
    }
    
    
    
    
}
