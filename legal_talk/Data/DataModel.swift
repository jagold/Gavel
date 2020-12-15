//
//  DataModel.swift
//  legal_talk
//
//  Created by Jack on 5/17/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation

//test change 2

class DataModel{
    
    //MARK: Properties
    var Doctors : [Doctor]
    var Treatments : [Treatment]
    var user: String
    var Clients: [Client]
    var Providers: [Provider]
    var currrent_code: String
    var attorney: String
    var name: String
    var firm: String
    var limitations: [Limitation]
    var attorneys: [String]
    var futureTreatments: Dictionary<String,[Treatment]>
    var currentDate : String
    var documents : [Data]
    var MissedTreatments : [Treatment]
    var DocumentList: [Document]
    
    
    init() {
        self.DocumentList = [Document]()
        self.documents = [Data]()
        self.currentDate = ""
        self.futureTreatments = [String:[Treatment]]()
        self.Doctors = [Doctor]()
        self.Clients = [Client]()
        self.Providers = [Provider]()
        self.Treatments = [Treatment]()
        self.MissedTreatments = [Treatment]()
        self.user = "Jack2 1Goldberg" //After authentication, make this the client username
        self.currrent_code = ""
        self.attorney = ""
        self.name = ""
        self.firm = ""
        self.limitations = [Limitation]()
        self.attorneys = [String]()
        randomString(length: 10)
        loadSampleDocs()
        self.currentDate = stripTimeFromDateString(date: dateToString(Date: Date()))
    }
    
    /*
     Load sample docs. Should not be needed 
     */
    func loadSampleDocs(){
        let nullDoc = Doctor(Name: "Select A Doctor",  Specialty: "None", Provider: Provider(Name: "", Address: "", Phone: ""))
        self.Doctors += [nullDoc]
        
    }
    
    
    
    //Date object to form mm/dd/yyyy, hh:mm AM/PM
    func dateToString(Date: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        dateFormatter.timeStyle = .short
        
        return dateFormatter.string(from: Date)
    }
    
    //Format the string as a date object
    func stringToDate(stringDate: String) -> Date{
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateStyle = .short
        
        dateFormatter.timeStyle = .short
        
        let date =  dateFormatter.date(from:stringDate)!
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: date)
        
        return calendar.date(from:components)!
    }
    
    /*
     Strip the time from a date string for the scheduled treatment dictionary
     */
    func stripTimeFromDateString(date: String) -> String{
        let dateSplit = date.split(separator: ",")
        
        
        return String(dateSplit[0])
    }
    
    /*
     Strip the mm/dd/yyyy from the date for the calendar
     */
    func stripDateFromDateString(date: Date) -> String{
        let dateString = dateToString(Date: date)
        let dateSplit = dateString.split(separator: ",")
        
        return String(dateSplit[1])
    }
    
    /*
     Eventually make this doctorToJSON
     */
    func doctorToCSV(Doctor: Doctor) -> String{
        
        let csvObject: String = Doctor.Name +  "," + Doctor.Specialty
        
        return csvObject
    }
    
    
    
    func doctorToJSON(Doctor: Doctor) -> String {
        
        let doctorJSON : String = "{ \"Name\": " + Doctor.Name + ", \"Provider\": " + providerToJSON(Provider: Doctor.Provider) + ", \"Specialty\": " + Doctor.Specialty + "}"
        
        return doctorJSON
    }
    func providerToJSON(Provider: Provider) -> String {
        
        let providerJSON : String = "{ \"Name\": " + Provider.Name + ", \"Phone\": " + Provider.Phone + ", \"Address\": " + Provider.Address + "}"
        
        return providerJSON
    }
    
    /*
     Serializing does not work. I have no idea why
     */
    func JSONtodoctor(doctorJSON: String) -> Doctor{
        
        let replacedDoctor = doctorJSON.replacingOccurrences(of: "\n", with: "")
        let doctorData = Data(replacedDoctor.utf8)
        
        print("Is serializable")
        //  print(JSONSerialization.isValidJSONObject(doctorData))
        
        let string = "[{\"form_id\":3465,\"canonical_name\":\"df_SAWERQ\",\"form_name\":\"Activity 4 with Images\",\"form_desc\":null}]"
        let data = string.data(using: .utf8)!
        
        print(JSONSerialization.isValidJSONObject(string))
        
        //  let doctor = (try? JSONSerialization.jsonObject(with: NSDoctor)) as? Dictionary<String,Any>
        
        
        // let doctorObject = Doctor(Name: doctor!["Name"] as! String, Specialty: doctor!["Specialty"] as! String, Provider: JSONtoprovider(providerJSON: doctor!["Provider"] as! String))
        print("Provider: ")
        
        // print(doctor?["Provider"] as! String)
        return Doctor(Name: "", Specialty: "", Provider: Provider(Name: "", Address: "", Phone: ""))
        
        
    }
    
    /*
     Serializing does not work. I have no idea why
     */
    func JSONtoprovider(providerJSON: String) -> Provider {
        print(providerJSON)
        var replacedJSON = providerJSON.replacingOccurrences(of: "\n", with: "")
        
        let providerData = try? replacedJSON.data(using: .utf8)
        let provider = try? JSONSerialization.jsonObject(with: providerData!, options: [.allowFragments]) as? [Dictionary<String,Any>]
        
        var providerObject = Provider(Name: provider![0]["Name"] as! String, Address: provider![0]["Address"] as! String, Phone: provider![0]["Phone"] as! String)
        
        return providerObject
        
        
        
    }
    
    /*
     Eventually make this jsonToDoctor
     We only want to insert the name and specialty of the doctor, need to figure out what to
     do about the Provider that is part of the doctor. Shouldn't be too bad, just need to take a second to think about it. I.E: When fetching the doctor, get name and specialty from the doctor field, get provider from the provider field, and make that the provider of the doctor. I will need to fix the next few functions, though
     */
    func csvtoDoctor(DoctorCSV: String, ProviderCSV: String) -> Doctor{
        let docArray = DoctorCSV.split(separator: ",")
        
        return Doctor(Name: String(docArray[0]), Specialty: String(docArray[1]), Provider: self.csvtoProvider(csvObject: ProviderCSV))
    }
    
    /*
     Random string for the attorney/firm code
     */
    func randomString(length: Int)  {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        self.currrent_code = String((0..<length).map{ _ in letters.randomElement()! })
        
    }
    
    func providerToCSV(provider: Provider) -> String{
        let csvObject: String = provider.Name + "," + provider.Address + "," + provider.Phone
        
        return csvObject
    }
    
    func csvtoProvider(csvObject: String) -> Provider{
        let providerArray = csvObject.split(separator: ",")
        return Provider(Name: String(providerArray[0]), Address: String(providerArray[1]), Phone: String(providerArray[2]))
    }
    
    /*
     Helper function for adding a treatment to the scheduled treatment dictionary
     either append it to the existing key, or create a new key
     */
    func addFutureTreatment(date: Date, treatment: Treatment){
        if var val = self.futureTreatments[self.stripTimeFromDateString(date:  self.dateToString(Date: date))] {
            val.append(treatment)
        }else{
            self.futureTreatments[self.stripTimeFromDateString(date:  self.dateToString(Date: date))] = [treatment]
        }
    }
    
    
}
