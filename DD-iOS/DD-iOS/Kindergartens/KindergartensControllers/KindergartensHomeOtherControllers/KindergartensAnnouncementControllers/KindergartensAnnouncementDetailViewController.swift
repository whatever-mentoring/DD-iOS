//
//  KindergartensAnnouncementDetailViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/13.
//

import UIKit

class KindergartensAnnouncementDetailViewController: UIViewController {

    
    @IBOutlet weak var kindergartensAnnouncementTitleLabel: UILabel!
    @IBOutlet weak var kindergartensAnnouncementImageView: UIImageView!
    @IBOutlet weak var kindergartensAnnouncementBodyTextView: UITextView!

    @IBOutlet weak var authorProfileImageView: UIImageView!
    @IBOutlet weak var authorProfileNameLabel: UILabel!
    @IBOutlet weak var authorProfileLocationLabel: UILabel!
    
    // 공지사항을 받아올 데이터 변수
    var kindergartensAnnouncementData: announcement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundImageView(authorProfileImageView)

        kindergartensAnnouncementTitleLabel.text = kindergartensAnnouncementData?.announcementTitle
        kindergartensAnnouncementImageView.image = kindergartensAnnouncementData?.announcementImage
        kindergartensAnnouncementBodyTextView.text = kindergartensAnnouncementData?.announcementDescription
        
        authorProfileNameLabel.text = "댕댕유치원"
        authorProfileLocationLabel.text = "후평 3동"
    }
    
    // 프로필 이미지를 둥글게 만들어주는 메서드
    func roundImageView(_ imageView: UIImageView) {
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
    }

}
