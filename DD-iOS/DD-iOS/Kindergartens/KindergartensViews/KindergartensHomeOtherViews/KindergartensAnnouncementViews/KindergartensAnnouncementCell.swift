//
//  KindergartensAnnouncementCell.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/13.
//

import UIKit

class KindergartensAnnouncementCell: UITableViewCell {

    
    
    @IBOutlet weak var kindergartensAnnouncementTitleLabel: UILabel!
    @IBOutlet weak var kindergartensAnnouncementDescriptionLabel: UILabel!
    @IBOutlet weak var kindergartensAnnouncementDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
