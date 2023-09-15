//
//  KindergartensCreateAnnouncementViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/13.
//

import UIKit

class KindergartensCreateAnnouncementViewController: UIViewController {
    
    
    @IBOutlet weak var kindergartensCreateNaviBar: UINavigationBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addNaviItem()
    }
    
    // 네비게이션 바의 타이틀과 버튼을 추가해주는 메서드
    func addNaviItem() {
        let naviItem = UINavigationItem(title: "공지사항 쓰기")
        naviItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "circle.fill"), style: .plain, target: self, action: #selector(self.profileTapButton))
        
        kindergartensCreateNaviBar.items = [naviItem]
    }
    
    
    
    @objc func profileTapButton() {
        print(#function)
    }
    
    
    
}
