//
//  RecordTableViewCell.swift
//  Millioner
//
//  Created by admin on 19.10.2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

final class RecordTableViewCell: UITableViewCell {

    @IBOutlet weak var percentAnswer: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var corecctAnswerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
