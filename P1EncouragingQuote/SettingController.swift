//
//  SettingController.swift
//  P1EncouragingQuote
//
//  Created by phuuphuoc on 3/29/18.
//  Copyright © 2018 phuuphuoc. All rights reserved.
//

import UIKit

class SettingController: UIViewController{
    //MARK: UI Elements
    @IBOutlet weak var timePicker: UIDatePicker!
    
    
    //MARK: UI Events
    @IBAction func nextQuoteTime_Set(sender: UIDatePicker) {
        //Dam bao la co quyen notification roi
        guard let settings = UIApplication.sharedApplication().currentUserNotificationSettings() else {return}
        
        let time = timePicker.date //Khi chon se co luon giay hien tai
        
        let cal = NSCalendar.currentCalendar()
        let components = cal.components([.Day, .Month, .Year, .Hour, .Minute], fromDate: time)
        let nextMinute = cal.dateFromComponents(components)
        
        //Thay viec set notification o day
        //Cac thiet lap cua notification
        let notification = UILocalNotification()
        notification.fireDate = nextMinute
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    }
    
    @IBAction func btnBack_Tapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}