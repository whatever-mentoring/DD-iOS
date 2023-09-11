//
//  AnnouncementViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/10.
//

import UIKit

class UsersAnnouncementViewController: UIViewController {

    // 임시로 데이터 저장해서 화면에 보여주기 위한 것
    var usersAnnouncementArray: [announcement] = [announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementBody: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n", announcementDate: Date()), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementBody: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date()), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementBody: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date()), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementBody: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date()), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementBody: "3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date())]
    
    @IBOutlet weak var usersAnnouncementTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        usersAnnouncementTableView.dataSource = self
        usersAnnouncementTableView.rowHeight = 190
    }
    
    

}

extension UsersAnnouncementViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersAnnouncementArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UsersAnnouncementCell", for: indexPath) as! UsersAnnouncementCell
        
        cell.usersAnnouncementTitleLabel.text = usersAnnouncementArray[indexPath.row].announcementTitle
        cell.usersAnnouncementBodyLabel.text = usersAnnouncementArray[indexPath.row].announcementBody
        cell.usersAnnouncementDateLabel.text = usersAnnouncementArray[indexPath.row].announcementDateString
        cell.selectionStyle = .none
        
        
        return cell
    }
    
    
}
