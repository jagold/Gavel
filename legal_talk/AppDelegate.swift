//
//  AppDelegate.swift
//  legal_talk
//
//  Created by Jack on 5/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import AWSAppSync
import AWSMobileClient
import IQKeyboardManager
import PushKit
import AWSPinpoint
import UserNotifications
import PDFKit
import Amplify
import AmplifyPlugins

let globalData = DataModel() //Eventually, we will just use this for our data model instead of passing multiple models
let notifications = Notifications()

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate, PKPushRegistryDelegate {

    
    var pushRegistry: PKPushRegistry!
    var pinpoint: AWSPinpoint?
    
    
    
    var appSyncClient: AWSAppSyncClient?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        IQKeyboardManager.shared().isEnabled = true
        IQKeyboardManager.shared().keyboardDistanceFromTextField = 100
        IQKeyboardManager.shared().isEnableAutoToolbar = false
        
        pushRegistry = PKPushRegistry(queue: nil)
        pushRegistry.delegate = self
        pushRegistry.desiredPushTypes = [.fileProvider]
        
        
   
        
        do{
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig:appSyncServiceConfig,cacheConfiguration:cacheConfiguration)
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)

            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()


            print("Initialized appsync client")
        }catch {
            print("error initializing appsync client")
        }
        
        // Initialize AWSMobileClient singleton
        AWSMobileClient.default().initialize { (userState, error) in
            AWSMobileClient.default().signOut()
            if let userState = userState {
                print("UserState: \(userState.rawValue)")
            } else if let error = error {
                print("error: \(error.localizedDescription)")
            }
        
        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func pushRegistry(_ registry: PKPushRegistry, didUpdate pushCredentials: PKPushCredentials, for type: PKPushType) {
        
        let deviceToken = pushCredentials.token
        
        //Push token to server?????
        
    }
    
//    func registerForPushNotifications() {
//        UNUserNotificationCenter.current()
//            .requestAuthorization(options: [.alert, .sound, .badge]) { [weak self] granted, _ in
//                print("Permission granted: \(granted)")
//                guard granted else { return }
//
//                // Only get the notification settings if user has granted permissions
//                self?.getNotificationSettings()
//            }
//    }
//
//    func getNotificationSettings() {
//        UNUserNotificationCenter.current().getNotificationSettings { settings in
//            print("Notification settings: \(settings)")
//            guard settings.authorizationStatus == .authorized else { return }
//
//            DispatchQueue.main.async {
//                // Register with Apple Push Notification service
//                UIApplication.shared.registerForRemoteNotifications()
//            }
//        }
//    }
    
    
//    // MARK: Remote Notifications Lifecycle
//    func application(_: UIApplication,
//                    didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
//        let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
//        let token = tokenParts.joined()
//        print("Device Token: \(token)")
//
//        // Register the device token with Pinpoint as the endpoint for this user
//        pinpoint!.notificationManager
//            .interceptDidRegisterForRemoteNotifications(withDeviceToken: deviceToken)
//    }
//
//    func application(_: UIApplication,
//                    didFailToRegisterForRemoteNotificationsWithError error: Error) {
//        print("Failed to register: \(error)")
//    }
//
//    func application(_ application: UIApplication,
//                    didReceiveRemoteNotification userInfo: [AnyHashable: Any],
//                    fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult)
//                        -> Void) {
//        // if the app is in the foreground, create an alert modal with the contents
//        if application.applicationState == .active {
//            let alert = UIAlertController(title: "Notification Received",
//                                          message: userInfo.description,
//                                          preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
//
//            UIApplication.shared.keyWindow?.rootViewController?.present(
//                alert, animated: true, completion: nil
//            )
//        }
//
//        // Pass this remote notification event to pinpoint SDK to keep track of notifications produced by AWS Pinpoint campaigns.
//        pinpoint!.notificationManager.interceptDidReceiveRemoteNotification(
//            userInfo, fetchCompletionHandler: completionHandler
//        )
//    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        UIApplication.shared.applicationIconBadgeNumber = 0
        print("Became active")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        UIApplication.shared.applicationIconBadgeNumber = 0
        print("Entered foreground")

    }
    

    

}

