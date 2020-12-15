//
//  ClientsHistory.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ClientsHistory: UITableViewController {
    
    var currentClient = String()
    var server_action = server_handler()
    var halfModalTransitioningDelegate: HalfModalTransitioningDelegate?
    @IBOutlet weak var missedTreatmentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        if(globalData.MissedTreatments.count == 1){
            missedTreatmentLabel.text = String(globalData.MissedTreatments.count) + " Missed Treatment"
        }else{
            missedTreatmentLabel.text = String(globalData.MissedTreatments.count) + " Missed Treatments"
        }
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        self.navigationItem.title = currentClient + "'s Treatments"
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
        let cellIdentifier = "ClientHistoryCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ClientsHistoryCell else{
            fatalError("dequeued cell not an instance of ClientsHistoryCell")
        }
        
        // Configure the cell...
        let treatment = globalData.Treatments[indexPath.row]
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        if(treatment.Treatment == "Initial Treatment"){
            cell.treatmentName.text = "Client's Treatments"
            cell.treatmentDate.text = ""
            
        }else{
            cell.treatmentName.text = treatment.Treatment
            
            cell.treatmentDate.text
                = dateFormatter.string(from: treatment.Date)
            
            if(treatment.viewed == false){
                cell.backgroundColor = UIColor.green
            }
        }
        
        // Configure the cell...
        
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
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "treatmentDetail":
            guard let treatmentDetailNav = segue.destination as? AppNavController else{
                fatalError("Unexpected destination")
            }
            
            guard let selectedClientCell = sender as? ClientsHistoryCell else {
                fatalError("Unexpected sender: \(String(describing: sender))")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedClientCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            
            guard let treatmentDetail = treatmentDetailNav.topViewController as? TreatmentDetail else{
                fatalError("top view not treatmentDetail")
            }
            
            treatmentDetail.treatmentIndex = indexPath.row
            
            
            if(globalData.Treatments[indexPath.row].viewed == false){
                server_action.updateToViewed(ID: globalData.Treatments[indexPath.row].id ?? "No ID")
                print("Change to viewed")
                globalData.Treatments[indexPath.row].viewed = true
                self.tableView.reloadRows(at: [indexPath], with: .none)
            }
            
            tableView.reloadData()
            
            self.halfModalTransitioningDelegate =  HalfModalTransitioningDelegate(viewController: self, presentingViewController: treatmentDetailNav)
            
            treatmentDetailNav.modalPresentationStyle = .custom
            treatmentDetailNav.transitioningDelegate = self.halfModalTransitioningDelegate
            
            
            
        default:
            fatalError("NO hits on segue")
        }
    }
    
    
    
}
