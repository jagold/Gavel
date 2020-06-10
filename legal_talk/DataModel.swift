//
//  DataModel.swift
//  legal_talk
//
//  Created by Jack on 5/17/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation


class DataModel{
    var Doctors : [Doctor]
    var Treatments : [Treatment]
    var user: String
    var Clients: [Client]
    
    var currrent_code: String
    var attorney: String
    var name: String
    //var attorney: String // Add attorney to updated schema so attorney can fetch all of their clients
    
    init() {
        self.Doctors = [Doctor]()
        self.Clients = [Client]()
        
        self.Treatments = [Treatment]()
        self.user = "Jack21Goldberg" //After authentication, make this the client username
        self.currrent_code = ""
        self.attorney = ""
        self.name = ""
        randomString(length: 10)
        loadSampleDocs()
        
    }
    
    func loadSampleDocs(){
        let nullDoc = Doctor(Name: "Select A Doctor", Phone: "420", Address: "Space", Specialty: "None")
        self.Doctors += [nullDoc]

    }
   

    
    func dateToString(Date: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        return dateFormatter.string(from: Date)
    }
    
    
    /*
     Eventually make this doctorToJSON
     */
    func doctorToCSV(Doctor: Doctor) -> String{
        let csvObject: String = Doctor.Name + "," + Doctor.Phone + "," + Doctor.Address + "," + Doctor.Specialty
        
        return csvObject
    }
    
    /*
     Eventually make this jsonToDoctor
     */
    func csvtoDoctor(DoctorCSV: String) -> Doctor{
        let docArray = DoctorCSV.split(separator: ",")
        
        return Doctor(Name: String(docArray[0]), Phone: String(docArray[1]), Address: String(docArray[2]), Specialty: String(docArray[3]))
    }
    
    func randomString(length: Int)  {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        self.currrent_code = String((0..<length).map{ _ in letters.randomElement()! })
        
    }
    
}
