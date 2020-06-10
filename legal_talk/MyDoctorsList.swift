//
//  MyDoctorsList.swift
//  legal_talk
//
//  Created by Jack on 5/15/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class MyDoctorsList: UITableViewController, ObservableObject {
    
    
    //MARK: Properties
    var Data_Model = DataModel()
    
    @IBOutlet weak var backToMenuButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: Hardcoded new doctor, remove after AddNewDoctor is done
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Data_Model.Doctors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "DoctorTableCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? DoctorTableCell else{
            fatalError("dequeued cell not an instance of DoctorTableCell")
        }
        
        let doctor = Data_Model.Doctors[indexPath.row]
        
        if doctor.Name == "Select A Doctor"{
            cell.DoctorName.text = "Your Doctors"
            cell.specialtyLabel.text = ""
        }else{
            cell.DoctorName.text = doctor.Name
            cell.specialtyLabel.text = doctor.Specialty
        }
       

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
    
    //MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        switch segue.identifier ?? "" {
        case "backToMenu":
            guard let mainMenuController = segue.destination as? ClientMedMenu else {
                fatalError("Unexpected Destination")
            }
            mainMenuController.Data_Model = self.Data_Model
            
        case "toAddDoctor":
            guard let addDoctorController = segue.destination as? AddNewDoctor else{
                fatalError("Unexpected Destination")
            }
            addDoctorController.Data_Model = self.Data_Model
        default:
            fatalError("Segue didn't match")
        }
        
    }
    
    @IBAction func unwindToList(sender: UIStoryboardSegue){
        
        if let sourceViewController = sender.source as? AddNewDoctor, let new_Doc = sourceViewController.new_Doc
            {
                if let selectedIndexPath = tableView.indexPathForSelectedRow{
                    self.Data_Model.Doctors[selectedIndexPath.row] = new_Doc
                    tableView.reloadRows(at: [selectedIndexPath], with: .none)
                }else{
                
                    // Add a new meal.
                    let newIndexPath = IndexPath(row: self.Data_Model.Doctors.count, section: 0)
                    
                    self.Data_Model.Doctors.append(new_Doc)
                    tableView.insertRows(at: [newIndexPath], with: .automatic)
                }
                
        }
        
    }

}
