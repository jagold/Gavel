//
//  ScheduleTableTableViewController.swift
//  legal_talk
//
//  Created by Jack on 7/9/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ScheduleTableTableViewController: UITableViewController {

    
    var currentDate : String! {
        didSet{
            print("The data did set")
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
       self.currentDate = globalData.currentDate
       print(globalData.futureTreatments[globalData.currentDate]?.count)
       print(globalData.currentDate)
        
      //  globalData.currentDate = globalData.stripTimeFromDateString(date: globalData.dateToString(Date: Date()))
        print("Initial global date")
        print(globalData.currentDate)
        self.tableView.reloadData()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(globalData.futureTreatments[globalData.currentDate]?.count)
        return globalData.futureTreatments[globalData.currentDate]?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var popUpWindow: PopUpWindow!
        
        let selectedTreatment = globalData.futureTreatments[globalData.currentDate]![indexPath.row]
        
        popUpWindow = PopUpWindow(title: "Scheduled Treatment", text: globalData.stripDateFromDateString(date: selectedTreatment.Date) + " with " + selectedTreatment.Doctor.Name + " at " + selectedTreatment.Provider.Name, buttontext: "Dismiss")
        self.present(popUpWindow, animated: true, completion: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ScheduleCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ScheduleCell else{
             fatalError("dequeued cell not an instance of DoctorTableCell")
         }
         print(globalData.futureTreatments[globalData.currentDate]?[indexPath.row].Doctor.Name)
        cell.scheduleLabel.text =  globalData.stripDateFromDateString(date: (globalData.futureTreatments[globalData.currentDate]?[indexPath.row].Date)!) + " - " + (globalData.futureTreatments[globalData.currentDate]?[indexPath.row].Provider.Name)! ?? "Unknown Provider"
        
         return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
