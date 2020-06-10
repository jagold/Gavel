//
//  TreatmentHistoryCellController.swift
//  legal_talk
//
//  Created by Jack on 5/18/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class TreatmentHistoryCellController: UITableViewCell {

    @IBOutlet weak var treatmentName: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
