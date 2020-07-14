//
//  GenerateFirmCode.swift
//  legal_talk
//
//  Created by Jack on 6/13/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class GenerateFirmCode: UIViewController {
    var server_action = server_handler()
    @IBOutlet weak var codeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        globalData.randomString(length: 10)
        

        server_action.updateFirmCode(currentCode: globalData.currrent_code)
        codeLabel.text = "Attorney Sign-Up ID: " + globalData.currrent_code
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
