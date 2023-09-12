//
//  AnnouncementViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/10.
//

import UIKit

class UsersAnnouncementViewController: UIViewController {

    // 임시로 데이터 저장해서 화면에 보여주기 위한 것
    var usersAnnouncementArray: [announcement] = [announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n", announcementDate: Date(), announcementImage: UIImage(named: "img3.jpeg")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date(), announcementImage: UIImage(named: "img1.jpg")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date(), announcementImage: UIImage(named: "img3.jpeg")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date(), announcementImage: UIImage(named: "img2.webp")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 선생님도 친구들도 생일 진심으로 축하해~!\n\n3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 선생님도 친구들도 생일 진심으로 축하해~!\n\n3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 선생님도 친구들도 생일 진심으로 축하해~!", announcementDate: Date(), announcementImage: UIImage(named: "img3.jpeg"))]
    
    @IBOutlet weak var usersAnnouncementTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        usersAnnouncementTableView.dataSource = self
        usersAnnouncementTableView.delegate = self
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
        cell.usersAnnouncementDescriptionLabel.text = usersAnnouncementArray[indexPath.row].announcementDescription
        cell.usersAnnouncementDateLabel.text = usersAnnouncementArray[indexPath.row].announcementDateString
        cell.selectionStyle = .none
        
        
        return cell
    }
}

extension UsersAnnouncementViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "usersAnnouncementToDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "usersAnnouncementToDetail" {
            let detailVC = segue.destination as! UsersAnnouncementDetailViewController
            let index = sender as! IndexPath
            
            detailVC.usersAnnouncementData = usersAnnouncementArray[index.row]
            
        }
    }
}
