//
//  ViewController.swift
//  FirebaseNotifications
//
//  Created by Vyacheslav Horbach on 20/09/16.
//  Copyright © 2016 Vjaceslav Horbac. All rights reserved.
//

import UIKit
import UserNotifications
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { (granted, err) in
            if err != nil {
                print(err.debugDescription)
            }
            
            UIApplication.shared.registerForRemoteNotifications()
        }
        
        //FIRMessaging.messaging().subscribe(toTopic: "topics/news")

        
        let token = FIRInstanceID.instanceID().token()
        print(token)
    }
}






