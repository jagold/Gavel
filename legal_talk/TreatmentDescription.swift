//
//  TreatmentDescription.swift
//  legal_talk
//
//  Created by Jack on 6/9/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class TreatmentDetail: UIViewController {

    var data_model = DataModel()
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var treatmentLabel: UILabel!
    @IBOutlet weak var doctorLabel: UILabel!
    @IBOutlet weak var providerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
