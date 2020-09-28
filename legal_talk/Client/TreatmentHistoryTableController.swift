//
//  TreatmentHistoryTableController.swift
//  legal_talk
//
//  Created by Jack on 5/18/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class TreatmentHistoryTableController: UITableViewController {

    //MARK: Properties
    var server_action = server_handler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return globalData.Treatments.count
       

    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TreatmentTableCell"
       guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TreatmentHistoryCellController else{
            fatalError("dequeued cell not an instance of DoctorTableCell")
        }
        let treatment = globalData.Treatments[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        if treatment.Treatment == "Initial Treatment" {
            cell.treatmentName.text = "Your Treatments"
            cell.dateLabel.text = ""
        }else{
            cell.treatmentName.text = treatment.Treatment
            
            cell.dateLabel.text
                = /*dateFormatter.string(from: treatment.Date)*/ globalData.dateToString(Date: treatment.Date)
        }
        // Configure the cell...

        return cell
    }
    

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                var popUpWindow: PopUpWindow!
        
        popUpWindow = PopUpWindow(title: "Treatment Detail", text: globalData.Treatments[indexPath.row].Treatment + " with " + globalData.Treatments[indexPath.row].Doctor.Name + " on " + globalData.dateToString(Date:globalData.Treatments[indexPath.row].Date), buttontext: "Dismiss")
        
        self.present(popUpWindow, animated: true, completion: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            server_action.deleteTreatment(ID: globalData.Treatments[indexPath.row].id!)

            globalData.Treatments.remove(at: indexPath.row)
            
            
            //server_action.deleteTreatment(ID: globalData.treatmentIDs[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
