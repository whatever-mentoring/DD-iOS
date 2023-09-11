//
//  DiarySelectTableViewCell.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/10.
//

import UIKit

class DiarySelectTableViewCell: UITableViewCell {


    @IBOutlet var diarySelectDetail: UILabel!
    @IBOutlet var diarySelectName: UILabel!
    @IBOutlet var diarySelectImage: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20))
        
        contentView.layer.cornerRadius = 10
        
        diarySelectImage.layer.cornerRadius = 100
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
