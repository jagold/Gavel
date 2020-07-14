//
//  LimitationDetail.swift
//  legal_talk
//
//  Created by Jack on 6/24/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class LimitationDetail: UIViewController {

    
    @IBOutlet weak var limitationDetail: UILabel!
    var limitationIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        limitationDetail.text = globalData.limitations[limitationIndex].description
        // Do any additional setup after loading the view.
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
