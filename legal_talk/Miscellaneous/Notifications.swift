//
//  Notifications.swift
//  legal_talk
//
//  Created by Jack on 6/30/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import Foundation
import UserNotifications


/*
 Notification class to set up the local notifications for reminding clients
 */
class Notifications: NSObject, UNUserNotificationCenterDelegate{
    
    let notificationCenter = UNUserNotificationCenter.current()
    let server_action = server_handler()
    
    override init() {
        super.init()
        notificationCenter.delegate = self
    }
    
    func userRequest(){
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        notificationCenter.requestAuthorization(options: options){(allowed, error) in
            if(!allowed){
                print("user did not allow notifications")
            }
        }
    }
    
    func scheduleNotification(treatment: Treatment, notificationType: String){

        
        let content = UNMutableNotificationContent()
        
        
        
        /*
         Actions the client can use
         */
        let yesAction = UNTextInputNotificationAction(identifier: "YES_ACTION",
              title: "Yes",
              options: UNNotificationActionOptions(rawValue: 0),
              textInputButtonTitle: "Save",
              textInputPlaceholder: "Describe Treatment")
        

        let noAction = UNNotificationAction(identifier: "NO_ACTION",
              title: "No",
              options: UNNotificationActionOptions(rawValue: 0))
        
        // Put the actions in a category
        let treatmentCategory =
              UNNotificationCategory(identifier: "TREATMENT",
              actions: [yesAction, noAction],
              intentIdentifiers: [],
              hiddenPreviewsBodyPlaceholder: "",
              options: .customDismissAction)
        
        //Add treatment category to the notification center
        notificationCenter.setNotificationCategories([treatmentCategory])
        
            switch notificationType{
            case "upcomingTreatment":
                
                //Set the content of the notification
                content.title = "Upcoming Treatment"
                content.body = "You have a scheduled appointment with " + treatment.Doctor.Name + " on " + globalData.dateToString(Date: treatment.Date)
                content.sound = UNNotificationSound.default
                content.badge = 1
                
                //Value equal to one day in seconds. This will make the reminder go one day before the scheduled appointment
                let dayBeforeInSeconds = -86400
                
                let upcomingDate = treatment.Date.addingTimeInterval(TimeInterval(dayBeforeInSeconds))
                let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: upcomingDate)
                 
                
                
                /* use for testing, this is a 10 second interval
                let date = Date().addingTimeInterval(10)
                let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
                 let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10.0, repeats: false)
                */
                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
                
                //Random string as the identifier
                let identifier = UUID().uuidString
                //Final product of the notification is a request
                let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
                
                //Add the request
                notificationCenter.add(request) { (error) in
                    if let error = error {
                        print("Error \(error.localizedDescription)")
                    }
                    
                    print("notification added")
                }
                
            
            case "pastTreatment":
                //This will ask the user after the treatment should have occured if they had attended
                
                //Set the content
                content.title = "Recent Treatment"
                content.body = "Did you get treated by " + treatment.Doctor.Name + " on " + globalData.dateToString(Date: treatment.Date) + "?"
                content.sound = UNNotificationSound.default
                content.badge = 1
                content.categoryIdentifier = "TREATMENT"
                content.userInfo = ["Doctor": globalData.doctorToCSV(Doctor:treatment.Doctor), "Date": treatment.Date, "Provider": globalData.providerToCSV(provider: treatment.Provider)]
                
                
                //Four hours later in seconds will be added to the entered date when sheduling a treatment
                let fourHoursLaterInSeconds = 14400
                
                let upcomingDate = treatment.Date.addingTimeInterval(TimeInterval(fourHoursLaterInSeconds))
                
                //let upcomingDate = treatment.Date.addingTimeInterval(10)
                
                let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: upcomingDate)
                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
                
                
                let identifier = UUID().uuidString
                let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
                
                content.categoryIdentifier = "TREATMENT"
                notificationCenter.add(request) { (error) in
                    if let error = error {
                        print("Error \(error.localizedDescription)")
                    }
                }
              

    
            default:
                fatalError("Incorrect notification type")
            }
    }
    
    
    
    
  /*
     Called when a notification response is entered. This will push a treatment to the server
     */
  func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
      
    
        let userInfo = response.notification.request.content.userInfo
    
        //May not need the following declarations, but I will keep them for now. ICoE
        let providerID = globalData.csvtoProvider(csvObject: userInfo["Provider"] as! String)
        let doctorID =  globalData.csvtoDoctor(DoctorCSV: userInfo["Doctor"] as! String, ProviderCSV: userInfo["Provider"] as! String)
        let dateID = userInfo["Date"] as! Date
        
    
    
        //If the response is an InputNotification, then it has to be a treatment input
        //Later on, there may be other input responses, so this may change, in that case
        //We can use a switch statement inside of this thing
        if let textResponse = response as? UNTextInputNotificationResponse {
            
            //Push to server
            server_action.insertTreatment(Username: globalData.user, Doctor: userInfo["Doctor"] as! String, Treatment: textResponse.userText, Date: globalData.dateToString(Date: userInfo["Date"] as! Date), Attorney: globalData.attorney, Name: globalData.name, Provider: userInfo["Provider"] as! String)
            //Insert to globalData
            globalData.Treatments.append(Treatment(Doctor:   globalData.csvtoDoctor(DoctorCSV: userInfo["Doctor"] as! String, ProviderCSV: userInfo["Provider"] as! String), Date:  userInfo["Date"] as! Date, Treatment:textResponse.userText, Provider:  globalData.csvtoProvider(csvObject:  userInfo["Provider"] as! String)))
        }
        
        
        switch response.actionIdentifier {
            //Not necessary now, but we'll keep it in case we need more functionality
            case "YES_ACTION":
                print("yes")
         
            case "NO_ACTION":
                print("no")
                //Should I do anything if the client did not go to get treatment? Inform the attorney? IDK. That is later down the line.
            default:
                print("no hits")
        }
        
        
        completionHandler()
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound, .badge]) //required to show notification when in foreground
    }
    
    
}
