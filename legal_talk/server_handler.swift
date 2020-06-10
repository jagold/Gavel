//
//  server_handler.swift
//  legal_talk
//
//  Created by Jack on 5/21/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation
import AWSAppSync
class server_handler{
    var appSyncClient: AWSAppSyncClient?
    var Data_Model = DataModel()
    
    init() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
    }
    
    
    func insertTreatment(Username: String, Doctor: String, Treatment: String, Date: String, Attorney: String, Name: String){
            
        let mutationInput = CreateTreatmentInput(username: Username, name: Name,doctor: Doctor, attorney: Attorney, treatment: Treatment, date: Date)
            
    //        mutationInput.description = "New Description"
        appSyncClient?.perform(mutation: CreateTreatmentMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                
            }
            print("Mutation complete.")
        }
            
            
        }
    
    /*
    func fetchAllTreatments(){
        let selectQuery = ListTreatmentsQuery()
        
    }
    */
    func fetchTreatmentHistory(userName: String, completion: @escaping ([Treatment], [Doctor], String, String) -> Void) {
        
        let selectQuery = ListTreatmentsQuery()
        let dateFormatter = DateFormatter()
        var filter = ModelTreatmentFilterInput()
        var stringInput = ModelStringInput()
        var treatmentList = [Treatment]()
        var doctorSet = Set<String>()
        var doctorList = [Doctor]()
        var attorney = String()
        var name = String()
        stringInput.eq = userName
        filter.username = stringInput
        
        selectQuery.filter = filter
        
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "m/dd/yy"

        
        
        
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData) {(result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
            print(result?.data?.listTreatments?.items!.count ?? "No items")
            
                result?.data?.listTreatments?.items!.forEach { //print(($0?.doctor)! + " " + ($0?.treatment)!)
                   
                    
                    //Hard coded doctor, need to figure out how to pull the doctor and link it to a doctor object, possibly JSONs? Do I want to reimplement the API? Not if I don't have to.
                    //Idea: Insert Doctor as a JSON, above, when fetched it can be
                    //Initialized as a doctor object
                    let fetchedDoc = self.Data_Model.csvtoDoctor(DoctorCSV: $0?.doctor ?? "1,2,3,4")
                    
                    if(!doctorSet.contains($0?.doctor ?? "No doctor")){
                        
                        name = $0?.name ?? "No name"
                        attorney = $0?.attorney ?? "No attorney"
                        doctorList.append(fetchedDoc)
                        
                        doctorSet.insert($0?.doctor ?? "No doctor")
                        
                    }
                    
                        
                    
                    
                        if($0 != nil){
                            
                            treatmentList.append(Treatment(Doctor: fetchedDoc, Date: dateFormatter.date(from:$0?.date ?? "")!, Treatment: $0?.treatment ?? ""))
                        }
                    
                    
                }
            
                completion(treatmentList, doctorList, attorney, name)
        }
    }
    
    func insertAttorney(Name: String, Firm: String){
        var attorneyInput = CreateAttorneyInput(id: Data_Model.user, username: Data_Model.user, name: Name, firm: Firm, currentCode: Data_Model.currrent_code)
        attorneyInput.id = Data_Model.user
        
        appSyncClient?.perform(mutation: CreateAttorneyMutation(input: attorneyInput)){(result,error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                
            }
            print("Attorney mutation complete.")
            
        }
    }
    
    func updateCode(currentCode: String){
        
        //Fix this... update id to the username
        var updateQuery = UpdateAttorneyInput(id: self.Data_Model.user)
        
        
        updateQuery.currentCode = currentCode
        
        
        appSyncClient?.perform(mutation: UpdateAttorneyMutation(input: updateQuery)){(result, error) in
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }else if let resultError = result?.errors {
                    print("Error saving the item on server: \(resultError)")
                    return
                }else {
                    print("Success Update Data")
                }
            }
        }
    
    func retrieveAttorney(username: String, completion: @escaping (String) -> Void ){
        
        let selectQuery = ListAttorneysQuery()
        var filter = ModelAttorneyFilterInput()
        var stringInput = ModelStringInput()
        
        stringInput.eq = username
        filter.username = stringInput
        
        selectQuery.filter = filter
        
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
            
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
             }
            
            if(result?.data?.listAttorneys?.items?.count == 0){
                print("NO attorneys")
                completion("Nil")
            }else{
                result?.data?.listAttorneys?.items?.forEach{lawyer in
                    print("Here is the attorney you asked for")
                    print(lawyer?.username ?? "No lawyer")
                    completion(lawyer?.username ?? "Nil")
                }
            }
        }
        
    }
    
    
    func fetchClients(Attorney: String, completion: @escaping ([Client]) -> Void){
        
        
        let selectQuery = ListTreatmentsQuery()
        var filter = ModelTreatmentFilterInput()
        var stringInput = ModelStringInput()
        var clientList = Array<Client>()
        var clientSet = Set<String>()
        stringInput.eq = Attorney
        filter.attorney = stringInput
        
        selectQuery.filter = filter
        
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
             }
            
                
            
                result?.data?.listTreatments?.items?.forEach{treatment in
                    
                    
                    if(!clientSet.contains(treatment?.username ?? "No username")){
                  
                        clientList.append(Client(Name: treatment?.name ?? "No name", Phone: "777", Description: "Hardcode description", Username: treatment?.username ?? "No username"))
                        
                        clientSet.insert(treatment?.username ?? "No username")
                    }
                    
                }
            
                completion(clientList)
            
        }
        
        
    }
    
    
    /*
     For the initial assignment of an attorney to a client
     */
    func getClientAttorney(Code: String, completion: @escaping (String) -> Void){
        let selectQuery = ListAttorneysQuery()
        var filter = ModelAttorneyFilterInput()
        var stringInput = ModelIDInput()
        
        
        stringInput.eq = Code
        filter.currentCode = stringInput
        
        selectQuery.filter = filter
        
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
            
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
             }
            
            completion(result?.data?.listAttorneys?.items?[0]?.username ?? "Nil")
            
            /*
            result?.data?.listAttorneys?.items?.forEach{lawyer in
                completion(lawyer?.username ?? "Nil")
            }
             */
        }
    }
    
}

