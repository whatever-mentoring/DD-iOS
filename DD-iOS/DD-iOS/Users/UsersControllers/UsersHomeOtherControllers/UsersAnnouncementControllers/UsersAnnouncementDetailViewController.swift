//
//  UsersAnnouncementDetailViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/13.
//

import UIKit

class UsersAnnouncementDetailViewController: UIViewController {

    
    @IBOutlet weak var usersAnnouncementTitleLabel: UILabel!
    @IBOutlet weak var usersAnnouncementImageView: UIImageView!
    @IBOutlet weak var usersAnnouncementBodyTextView: UITextView!
    
    @IBOutlet weak var authorProfileImageView: UIImageView!
    @IBOutlet weak var authorProfileNameLabel: UILabel!
    @IBOutlet weak var authorProfileLocationLabel: UILabel!
    
    // 공지사항을 받아올 데이터 변수
    var usersAnnouncementData: announcement?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundImageView(authorProfileImageView)

        usersAnnouncementTitleLabel.text = usersAnnouncementData?.announcementTitle
        usersAnnouncementImageView.image = usersAnnouncementData?.announcementImage
        usersAnnouncementBodyTextView.text = usersAnnouncementData?.announcementDescription
        
        authorProfileNameLabel.text = "댕댕유치원"
        authorProfileLocationLabel.text = "후평 3동"
    }
    
    // 프로필 이미지를 둥글게 만들어주는 메서드
    func roundImageView(_ imageView: UIImageView) {
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
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
