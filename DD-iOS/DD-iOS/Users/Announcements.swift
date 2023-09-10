//
//  Announcements.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/10.
//

import Foundation

struct announcement {
    var announcementTitle: String
    var announcementBody: String
    var announcementDate: Date
    
    var announcementDateString: String {
        let myFormatter = DateFormatter()
        myFormatter.dateFormat = "yyyy년 MM월 dd일"
        let savedDateString = myFormatter.string(from: self.announcementDate)
        return savedDateString
    }
    
}
