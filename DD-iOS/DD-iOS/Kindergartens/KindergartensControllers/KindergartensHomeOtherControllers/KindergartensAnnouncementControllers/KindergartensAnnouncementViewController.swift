//
//  KindergartensAnnouncementViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/11.
//

import UIKit

class KindergartensAnnouncementViewController: UIViewController {

    // 임시로 데이터 저장해서 화면에 보여주기 위한 것
    var kindergartensAnnouncementArray: [announcement] = [announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n", announcementDate: Date(), announcementImage: UIImage(named: "img3.jpeg")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date(), announcementImage: UIImage(named: "img1.jpg")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date(), announcementImage: UIImage(named: "img3.jpeg")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~\n3월에도 많은 반려견들이 한층 더 의젓해졌네요!\n우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ ", announcementDate: Date(), announcementImage: UIImage(named: "img2.webp")), announcement(announcementTitle: "포스 앤 네이쳐 샴푸 표지모델 촬영 알림", announcementDescription: "3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 선생님도 친구들도 생일 진심으로 축하해~!\n\n3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 선생님도 친구들도 생일 진심으로 축하해~!\n\n3월에도 많은 반려견들이 한층 더 의젓해졌네요! 우리 애기들, 생일 너무너무 축하하고 오래오래 건강하자~ 선생님도 친구들도 생일 진심으로 축하해~!", announcementDate: Date(), announcementImage: UIImage(named: "img3.jpeg"))]
    
    @IBOutlet weak var kindergartensAnnouncementTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }
    

    func setupTableView() {
        kindergartensAnnouncementTableView.dataSource = self
        kindergartensAnnouncementTableView.delegate = self
        kindergartensAnnouncementTableView.rowHeight = 190
    }

}

extension KindergartensAnnouncementViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kindergartensAnnouncementArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "KindergartensAnnouncementCell", for: indexPath) as! KindergartensAnnouncementCell
        
        cell.kindergartensAnnouncementTitleLabel.text = kindergartensAnnouncementArray[indexPath.row].announcementTitle
        cell.kindergartensAnnouncementDescriptionLabel.text = kindergartensAnnouncementArray[indexPath.row].announcementDescription
        cell.kindergartensAnnouncementDateLabel.text = kindergartensAnnouncementArray[indexPath.row].announcementDateString
        cell.selectionStyle = .none
        
        
        return cell
    }
}

extension KindergartensAnnouncementViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "kindergartensAnnouncementToDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "kindergartensAnnouncementToDetail" {
            let detailVC = segue.destination as! KindergartensAnnouncementDetailViewController
            let index = sender as! IndexPath
            
            detailVC.kindergartensAnnouncementData = kindergartensAnnouncementArray[index.row]
            
        }
    }
}
