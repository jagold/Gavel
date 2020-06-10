//
//  DoctorTableCell.swift
//  legal_talk
//
//  Created by Jack on 5/16/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class DoctorTableCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var DoctorName: UILabel!
    @IBOutlet weak var specialtyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
