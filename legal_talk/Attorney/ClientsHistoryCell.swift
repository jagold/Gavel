//
//  ClientsHistoryCell.swift
//  legal_talk
//
//  Created by Jack on 6/8/20.
//  Copyright © 2020 Jack. All rights reserved.
//

import UIKit

class ClientsHistoryCell: UITableViewCell {
    @IBOutlet weak var treatmentName: UILabel!
    @IBOutlet weak var treatmentDate: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
