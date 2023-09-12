//
//  Announcements.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/10.
//

import UIKit

struct announcement {
    var announcementTitle: String
    var announcementDescription: String
    var announcementDate: Date
    var announcementImage: UIImage?
    
    var announcementDateString: String {
        let myFormatter = DateFormatter()
        myFormatter.dateFormat = "yyyy년 MM월 dd일"
        let savedDateString = myFormatter.string(from: self.announcementDate)
        return savedDateString
    }
    
}
