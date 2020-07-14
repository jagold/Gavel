//
//  CalendarViewController.swift
//  legal_talk
//
//  Created by Jack on 7/9/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource {
    
    
    @IBOutlet weak var calendar: FSCalendar!
    
    var currentDate = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
        calendar.dataSource = self
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("SEGUE")
        print(segue.identifier!)
      if (segue.identifier!) == "embedSegueSchedule" {
        if let childVC = segue.destination as? ScheduleTableTableViewController {
          //Some property on ChildVC that needs to be set
            childVC.tableView.reloadData()
        }
      }
    }
 
    
    
    
    
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        
        var vc = self.children[0] as! ScheduleTableTableViewController
        
        
        self.currentDate = globalData.stripTimeFromDateString(date: globalData.dateToString(Date: date))
        print(globalData.stripTimeFromDateString(date:  globalData.dateToString(Date: date)))
        globalData.currentDate = globalData.stripTimeFromDateString(date: globalData.dateToString(Date: date))
        vc.currentDate = globalData.currentDate
        vc.tableView.reloadData()
        
       // self.performSegue(withIdentifier: "embedSegueSchedule", sender: nil)
        if monthPosition == .previous || monthPosition == .next {
            calendar.setCurrentPage(date, animated: true)
        }
    }
    
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
        return globalData.futureTreatments[globalData.stripTimeFromDateString(date: globalData.dateToString(Date: date))]?.count ?? 0
    }

}
