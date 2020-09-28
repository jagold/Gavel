//
//  server_handler.swift
//  legal_talk
//
//  Created by Jack on 5/21/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation
import AWSAppSync
import Amplify
import AmplifyPlugins

class server_handler{
    var appSyncClient: AWSAppSyncClient?
    
    init() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
    }
    
    
    func insertTreatment(Username: String, Doctor: String, Treatment: String, Date: String, Attorney: String, Name: String, Provider: String, completion: @escaping (String) -> () = {_ in}){
        
        var treatmentID: String?
        let group = DispatchGroup()
        let mutationInput = CreateTreatmentInput( username: Username, name: Name, provider: Provider, doctor: Doctor, attorney: Attorney, treatment: Treatment, date: Date)
            
    //        mutationInput.description = "New Description"
        print("Attempting mutation")
        
        group.enter()
        appSyncClient?.perform(mutation: CreateTreatmentMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                
            
                
            }
            print("Mutation complete.")
            treatmentID =  (result?.data?.createTreatment?.id)!
            group.leave()
        }
        
        group.notify(queue: .main){
            completion( treatmentID! )
        }
            
        }
    

    func fetchTreatmentHistory(userName: String, completion: @escaping ([Treatment], [Treatment], [Doctor], String, String, [Provider]) -> Void) {
        
        let selectQuery = ListTreatmentsQuery()
        let dateFormatter = DateFormatter()
        var filter = ModelTreatmentFilterInput()
        var stringInput = ModelStringInput()
        var treatmentList = [Treatment]()
        var missedList = [Treatment]()
        
        var providerList = [Provider]()
        var providerSet = Set<String>()
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
                    let fetchedDoc = globalData.csvtoDoctor(DoctorCSV: $0?.doctor ?? "1,2", ProviderCSV: $0?.provider ?? "3,4,5")
                //    let fetchedDoc = globalData.JSONtodoctor(doctorJSON: $0?.doctor ?? "No Doctor")
                    let fetchedProvider = globalData.csvtoProvider(csvObject: $0?.provider ?? "1,2,3")
                //    let fetchedProvider = globalData.JSONtoprovider(providerJSON: $0?.provider ?? "No provider")
                    
                    if(!doctorSet.contains($0?.doctor ?? "No doctor") /*&& ($0?.treatment != "Future Treatment"*/){
                        
                        
                        name = $0?.name ?? "No name"
                        attorney = $0?.attorney ?? "No attorney"
                        if(fetchedDoc.Name != "Select A Doctor"){
                            doctorList.append(fetchedDoc)
                        }
                        
                        doctorSet.insert($0?.doctor ?? "No doctor")
                        
                    }
                    
                    if(!providerSet.contains($0?.provider ?? "No provider")){
                        
                        if(fetchedProvider.Name != "Your Providers"){
                            providerList.append(fetchedProvider)
                            providerSet.insert($0?.provider ?? "NO provider")
                        }
                    }
                    
                        
                    
                    
                        if($0 != nil){
                            if($0?.treatment != "Initial Treatment"  && $0?.treatment != "Future Treatment" && $0?.treatment != "DID NOT ATTEND"){
                                
                                var newTreatment = Treatment(Doctor: fetchedDoc, Date: globalData.stringToDate(stringDate: $0?.date ?? "") , Treatment: $0?.treatment ?? "", Provider: globalData.csvtoProvider(csvObject:$0?.provider ?? "No Provider"))
                                
                                newTreatment.id = $0!.id
                                
                                if ($0!.viewed == "true") {
                                    newTreatment.viewed = true
                                }else{
                                    newTreatment.viewed = false
                                }
                                
                                treatmentList.append(newTreatment)
                                
                     
                                
                            }else if($0?.treatment == "DID NOT ATTEND"){
                                var newTreatment = Treatment(Doctor: fetchedDoc, Date: globalData.stringToDate(stringDate: $0?.date ?? "") , Treatment: $0?.treatment ?? "", Provider: globalData.csvtoProvider(csvObject:$0?.provider ?? "No Provider"))
                                
                                newTreatment.id = $0!.id
                                
                                if ($0!.viewed == "true") {
                                    newTreatment.viewed = true
                                }else{
                                    newTreatment.viewed = false
                                }
                                
                                missedList.append(newTreatment)
                            }
                        }
                    
                    
                }
                
                completion(treatmentList, missedList, doctorList, attorney, name, providerList)
        }
    }
    
    func insertAttorney(Name: String, Firm: String){
        var attorneyInput = CreateAttorneyInput(id: "Bradly", username: globalData.user, name: Name, firm: Firm, currentCode: globalData.currrent_code)
        attorneyInput.id = globalData.user
        
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
        
        var updateQuery = UpdateAttorneyInput(id: globalData.user)
        
        
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
    
    func updateFirmCode(currentCode: String){
        
        //Fix this... update id to the username
        var updateQuery = UpdateFirmInput(id: globalData.user)
        
        
        updateQuery.currentCode = currentCode
        
        
        appSyncClient?.perform(mutation: UpdateFirmMutation(input: updateQuery)){(result, error) in
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
    
    
    func retrieveAttorney(username: String, completion: @escaping (String, String) -> Void ){
        
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
                completion("Nil", "Nil")
            }else{
                result?.data?.listAttorneys?.items?.forEach{lawyer in
        
                    completion(lawyer?.username ?? "Nil", lawyer?.firm ?? "Nil")
                }
            }
        }
        
    }
    
    
    /*
     Right now we are fetching the clients by the firm that they are attached to. However, the firm will be put in the attorney field for now. It will be changed later. 
     */
    func fetchClients(Firm: String, completion: @escaping ([Client]) -> Void){
        
        
        let selectQuery = ListTreatmentsQuery()
        var filter = ModelTreatmentFilterInput()
        var stringInput = ModelStringInput()
        var clientList = Array<Client>()
        var clientSet = Set<String>()
        stringInput.eq = Firm
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
            
            if(result?.data?.listAttorneys?.items?.count == 0){
                completion("Nil")
            }else{
                completion(result?.data?.listAttorneys?.items?[0]?.firm ?? "Nil")
            }
            
            /*
            result?.data?.listAttorneys?.items?.forEach{lawyer in
                completion(lawyer?.username ?? "Nil")
            }
             */
        }
    }
    
    
    /*
     Needed functions:
     1)Get doctor by provider
     2)Get providers, can be added as a completion of fetchTreatments
     3)Insert limitations
     4)Get limitations
     5)Update firm code
     6)Get an attorneys firm through code (Initial assignment)
     7)Assign a client to a firm instead of an attorney
     8)Corollary to 7 is fetch all clients of a given firm
     */
    
    
    func getDoctorByProvider(userName: String, provider: String, completion: @escaping ([Doctor]) -> Void){
        let selectQuery = ListTreatmentsQuery()
        var filter = ModelTreatmentFilterInput()
        var stringInput = ModelStringInput()
        var providerInput = ModelStringInput()
        var doctorSet = Set<String>()
        var doctorList = [Doctor]()
        stringInput.eq = userName
        providerInput.eq = provider
        filter.username = stringInput
        filter.provider = providerInput
        selectQuery.filter = filter
        
        
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData) {(result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                    return
                }
            
                result?.data?.listTreatments?.items!.forEach { //print(($0?.doctor)! + " " + ($0?.treatment)!)
                   
                    
                    let fetchedDoc = globalData.csvtoDoctor(DoctorCSV: $0?.doctor ?? "1,2", ProviderCSV: $0?.provider ?? "3,4")
                    
                    if(!doctorSet.contains($0?.doctor ?? "No doctor")){
                        
                        doctorList.append(fetchedDoc)
                        
                        doctorSet.insert($0?.doctor ?? "No doctor")
                        
                    }
   
                }

                completion(doctorList)
        }
        
    }
    
    /*
     Insert a new firm
     */
    func insertFirm(userName: String, firmName: String){
        let firmInput = CreateFirmInput(id: userName, username: userName, firm: firmName, currentCode: "Default Code")
        
        
        appSyncClient?.perform(mutation: CreateFirmMutation(input: firmInput)){(result,error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                
            }
            print("Firm mutation complete.")
            
        }
    }
    
    
    func retrieveFirm(userName: String, completion: @escaping (String) -> Void){
        let selectQuery = ListFirmsQuery()
     
        var filter = ModelFirmFilterInput()
        var stringInput = ModelIDInput()
        
        stringInput.eq = userName
        filter.id = stringInput
        
       selectQuery.filter = filter
        
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
             }
            
            if(result?.data?.listFirms?.items?.count == 0){
                print("NO firms")
                completion("Nil")
            }else{
                result?.data?.listFirms?.items?.forEach{firm in

                    completion(firm?.username ?? "Nil")
                }
            }
        }
        
    }
    
    func attachAttorneyToFirm(code: String, completion: @escaping (String) -> Void){
        
        let selectQuery = ListFirmsQuery()
        var filter = ModelFirmFilterInput()
        var stringInput = ModelIDInput()
        
        
        
        stringInput.eq = code
        filter.currentCode = stringInput
        
        selectQuery.filter = filter
        
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
            
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
             }
            
            if(result?.data?.listFirms?.items?.count == 0){
                completion("Nil")
            }else{
                completion(result?.data?.listFirms?.items?[0]?.username ?? "Nil")
            }
            
        }
        
        
    }
    
    
    func insert_limitation(Limitation: String){
        let limitation_input = CreateLimitationInput(username: globalData.user, description: Limitation)
        
        appSyncClient?.perform(mutation: CreateLimitationMutation(input: limitation_input)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                
            }
            print("Mutation complete.")
        }
        
    }
    
    func fetch_limitations(User: String, completion: @escaping ([Limitation]) -> Void){
           let selectQuery = ListLimitationsQuery()
        
           var filter = ModelLimitationFilterInput()
           var stringInput = ModelStringInput()
           var limitations = [Limitation]()
           stringInput.eq = User
           filter.username = stringInput
           
          selectQuery.filter = filter
           
           self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
               if error != nil {
                   print(error?.localizedDescription ?? "")
                   return
                }
               
               if(result?.data?.listLimitations?.items?.count == 0){
                   print("NO limitations")
               }else{
                    result?.data?.listLimitations?.items?.forEach{limit in
                       
                    limitations.append(Limitation(user:limit?.username ?? "No userName", description: limit?.description ?? "No description"))
                   }
                    completion(limitations)
               }
            
           }

    }
    
    
    func fetchAttorneys(Firm: String, completion: @escaping ([String]) -> Void){
        
           let selectQuery = ListAttorneysQuery()
        
           var filter = ModelAttorneyFilterInput()
           var stringInput = ModelStringInput()
           var attorneys = [String]()
           stringInput.eq = Firm
           filter.firm = stringInput
           
          selectQuery.filter = filter
           
           self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
               if error != nil {
                   print(error?.localizedDescription ?? "")
                   return
                }
               
               if(result?.data?.listAttorneys?.items?.count == 0){
                   print("NO attorneys")
               }else{
                    result?.data?.listAttorneys?.items?.forEach{attorney in
                       
                        attorneys.append(attorney?.name ?? "No attorney")
                   }
                    completion(attorneys)
               }
            
           }

    }
    
    func deleteTreatment(ID: String){
        var deleteQuery = DeleteTreatmentInput()
        var idInput = GraphQLID()
        idInput = (ID as GraphQLID)
        
        deleteQuery.id = idInput
        self.appSyncClient?.perform(mutation: DeleteTreatmentMutation(input: deleteQuery)){(result, error) in
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }
                if let resultError = result?.errors {
                    print("Error saving the item on server: \(resultError)")
                    
                }
                print("Mutation complete.")
            }
            
        }
    
    func updateToViewed(ID: String){
        
        var idInput = GraphQLID()
        idInput = (ID as GraphQLID)
        
        
        var updateQuery =  UpdateTreatmentInput(id: idInput)
        
        updateQuery.viewed = "true"
        
        self.appSyncClient?.perform(mutation: UpdateTreatmentMutation(input: updateQuery)){(result,error) in
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
    
    
    func updateScheduledToTreatment(ID: String, treatment: String){
           
           var idInput = GraphQLID()
           idInput = (ID as GraphQLID)
           
           
           var updateQuery =  UpdateTreatmentInput(id: idInput)
           
        updateQuery.treatment = treatment
           
           self.appSyncClient?.perform(mutation: UpdateTreatmentMutation(input: updateQuery)){(result,error) in
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
    
    func updateToDidNotAttend(ID: String){
           
           var idInput = GraphQLID()
           idInput = (ID as GraphQLID)
           
           
           var updateQuery =  UpdateTreatmentInput(id: idInput)
           
        updateQuery.treatment = "DID NOT ATTEND"
           
           self.appSyncClient?.perform(mutation: UpdateTreatmentMutation(input: updateQuery)){(result,error) in
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
    
    
        
    func fetchFutureTreatmentHistory(userName: String, completion: @escaping ([String:[Treatment]]) -> Void) {
            
            let selectQuery = ListTreatmentsQuery()
            let dateFormatter = DateFormatter()
            var filter = ModelTreatmentFilterInput()
            var stringInput = ModelStringInput()
            var treatmentInput = ModelStringInput()
            var treatmentList = [Treatment]()
            var scheduledDict = [String : [Treatment]]()
            
            treatmentInput.eq = "Future Treatment"
            stringInput.eq = userName
            filter.username = stringInput
            filter.treatment = treatmentInput
            selectQuery.filter = filter
            
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
            dateFormatter.dateFormat = "m/dd/yy"

            
            
            
            self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData) {(result, error) in
                    if error != nil {
                        print(error?.localizedDescription ?? "")
                        return
                    }
                
                
                    result?.data?.listTreatments?.items!.forEach {
                        
                        let fetchedDoc = globalData.csvtoDoctor(DoctorCSV: $0?.doctor ?? "1,2", ProviderCSV: $0?.provider ?? "3,4,5")
                        

                        if($0 != nil){
                            
                            let tempDate = globalData.stripTimeFromDateString(date: $0?.date ?? "")
                                
                                if var val = scheduledDict[/*$0?.date ?? "No date"*/tempDate]{
                                 
                                    val.append(Treatment(Doctor: fetchedDoc, Date: globalData.stringToDate(stringDate:$0?.date ?? ""), Treatment: $0?.treatment ?? "", Provider: globalData.csvtoProvider(csvObject:$0?.provider ?? "No Provider")))
                                    scheduledDict[tempDate] = val

                                }else{

                                    scheduledDict[/*$0?.date ?? "No date"*/tempDate] = [Treatment(Doctor: fetchedDoc, Date: globalData.stringToDate(stringDate: $0?.date ?? ""), Treatment: $0?.treatment ?? "", Provider: globalData.csvtoProvider(csvObject:$0?.provider ?? "No Provider"))]
                                }
                                
                                
                            treatmentList.append(Treatment(Doctor: fetchedDoc, Date: globalData.stringToDate(stringDate:$0?.date ?? ""), Treatment: $0?.treatment ?? "", Provider: globalData.csvtoProvider(csvObject:$0?.provider ?? "No Provider")))
                                
                        }
                    }
                
                    completion(scheduledDict)
            }
        }
    
    
    func getDocumentKeys(completion: @escaping ([Data], [Document]) -> Void) -> Void {
        let selectQuery = ListDocumentsQuery()
        var filter = ModelDocumentFilterInput()
    
        var clientNameInput = ModelStringInput()
        
        var documentList = [String]()
        var group = DispatchGroup()
        
        clientNameInput.eq = globalData.user
        
        filter.username = clientNameInput
        
        selectQuery.filter = filter
        
        group.enter()
        self.appSyncClient?.fetch(query: selectQuery, cachePolicy: .fetchIgnoringCacheData){(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            
            result?.data?.listDocuments?.items?.forEach{doc in
                
                documentList.append(doc?.contractKey ?? "No key")
                
                
            }
            group.leave()

        }
        
            group.notify(queue: .main){

                
                var documentData = [Data]()
                
                downloadDocFiles(Keys: documentList){data, docList in
                    documentData = data
                
                    
            

                
                    print("Document data")
                    print(documentData.count)
            
                    completion(documentData, docList)
                }
            
        }
        
        func downloadDocFiles(Keys: [String], completion: @escaping ([Data], [Document]) -> Void){
            
            var documentData = [Data]()
            var documentList = [Document]()
            
            
            for key in Keys {
                group.enter()
                _ = Amplify.Storage.downloadData(key: key,
                    progressListener: { progress in
                        print("Progress: \(progress)")
                    }, resultListener: { (event) in
                        switch event {
                        case let .success(data):
                            print("Completed: \(data)")
                            
                            /*
                             Create a document object, with data and key. So, when the document is signed,
                             it can be written to the S3 bucket with the same key, therefore overwriting the
                             unsigned version
                             */
                            documentData.append(data)
                            documentList.append(Document(data: data, key: key))

                            group.leave()
                        case let .failure(storageError):
                            print("Failed: \(storageError.errorDescription). \(storageError.recoverySuggestion)")
                    }
                })
            }
            
            
            
            
            
            group.notify(queue: .main){
                completion(documentData, documentList)
            }
            
        }
        
 
        
    }
    
}
    
    


