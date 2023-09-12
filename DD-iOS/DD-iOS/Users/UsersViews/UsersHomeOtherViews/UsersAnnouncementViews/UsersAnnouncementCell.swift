//
//  UsersAnnouncementCell.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/10.
//

import UIKit

class UsersAnnouncementCell: UITableViewCell {

    
    @IBOutlet weak var usersAnnouncementTitleLabel: UILabel!
    @IBOutlet weak var usersAnnouncementDescriptionLabel: UILabel!
    @IBOutlet weak var usersAnnouncementDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
