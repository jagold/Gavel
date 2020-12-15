//
//  LimitationTableController.swift
//  legal_talk
//
//  Created by Jack on 6/22/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class LimitationTableController: UITableViewController {
    
    var clientName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = clientName
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return globalData.limitations.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "LimitationCell"
        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? LimitationCell else{
            fatalError("Not instance of limitation cell")
        }
        
        // Configure the cell...
        
        let limitationDescription = globalData.limitations[indexPath.row].description
        
        cell.limitationLabel.text = limitationDescription
        
        return cell
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var popUpWindow: PopUpWindow!
        popUpWindow = PopUpWindow(title: "Limitation Detail", text: globalData.limitations[indexPath.row].description, buttontext: "Dismiss")
        
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
        case "limitationDetail":
            guard let limitation_Detail = segue.destination as? LimitationDetail else{
                fatalError("Unexpected destination")
            }
            
            guard let selectedClientCell = sender as? LimitationCell else {
                fatalError("Unexpected sender: \(String(describing: sender))")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedClientCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            
            limitation_Detail.limitationIndex = indexPath.row
            
            
        default:
            fatalError("NO hits on segue")
        }
    }
    
    
    
    
    
}
