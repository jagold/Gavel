//
//  ClientList.swift
//  legal_talk
//
//  Created by Jack on 5/25/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ClientList: UITableViewController {
    
    //MARK: Properties
    var server_action = server_handler()
    let group = DispatchGroup()
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return globalData.Clients.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "ClientCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ClientCell else{
            fatalError("dequeued cell not an instance of ClientCell")
        }
        
        // Configure the cell...
        let client = globalData.Clients[indexPath.row]
        
        cell.clientNameLabel.text = client.Name
        
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
        case "getClientInfo":
            guard let clientInfo = segue.destination as? ClientInfo else{
                fatalError("Unexpected destination")
            }
            
            guard let selectedClientCell = sender as? ClientCell else {
                fatalError("Unexpected sender: \(String(describing: sender))")
            }
             
            guard let indexPath = tableView.indexPath(for: selectedClientCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            
            clientInfo.clientUsername = globalData.Clients[indexPath.row].Username
            
            
            
            
            group.enter()
            self.server_action.fetchTreatmentHistory(userName: globalData.Clients[indexPath.row].Username){treatments, doctors,attorney,name, providers  in
                print("index 1")
                print(indexPath.row)
                globalData.Treatments = treatments
                globalData.Treatments.reverse()
                globalData.Doctors = doctors
                globalData.Providers = providers
                
                self.group.leave()
                
            }
            
            group.enter()
            self.server_action.fetch_limitations(User: globalData.Clients[indexPath.row].Username){limitations in
                print("index 2")
                print(indexPath.row)
                globalData.limitations = limitations
                self.group.leave()
            }
            
            self.group.notify(queue:.main){
                clientInfo.nameLabel = globalData.Clients[indexPath.row].Name
            
            
            }
            
        default:
            fatalError("NO hits on segue")
        }
    }
    

}
