//
//  DiaryTableViewCell.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/08.
//

import UIKit

class DiaryTableViewCell: UITableViewCell {

    
    @IBOutlet var diaryDetailLabel: UILabel!
    @IBOutlet var diaryDetailButton: UIButton!
    @IBOutlet var diaryTitleLabel: UILabel!
    @IBOutlet var diaryDateLabel: UILabel!
    @IBOutlet var diaryImage: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0))
        
        // TableViewCell 라운드 값
        contentView.layer.cornerRadius = 10
        
        // UIImage 라운드 값
        diaryImage.layer.cornerRadius = 10
        //
        diaryImage.alpha = 0.5
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
