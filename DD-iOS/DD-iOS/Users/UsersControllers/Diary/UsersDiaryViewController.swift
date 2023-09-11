//
//  DiaryViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/07.
//

import UIKit

class DiaryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var DiaryTableView: UITableView!
    
    
    // Date Picker 설정
    
    
   
    
    
    // TableView 설정
    // ------------
    // data 불러오기
    let diaryList = Diary.data
    
    // TableViewCell 높이 조절
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
    // TableViewCell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // TableViewCell 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        return diaryList.count
    }
    
    let cellName = "DiaryTableViewCell"
    let cellReuseIdentifire = "diaryCell"
    
    // TableView 출력
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = DiaryTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifire, for: indexPath) as! DiaryTableViewCell
        let target = diaryList[indexPath.section]
        
        cell.diaryImage?.image = UIImage(named: target.diaryImage)
        cell.diaryDateLabel?.text = target.diaryDate
        cell.diaryTitleLabel?.text = target.diaryTitle
        cell.diaryDetailLabel?.text = target.diaryDetail
        
        // 테이블뷰 선택 색상 없애기
        cell.selectionStyle = .none
        
        return cell
    }
    
    // TableView 데이터 전달 (화면 이동)
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "diaryDetailView", sender: nil)
    }
    
    
    private func registerXib() {
        let nibName = UINib(nibName: cellName, bundle: nil)
        DiaryTableView.register(nibName, forCellReuseIdentifier: cellReuseIdentifire)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerXib()
        
        DiaryTableView.delegate = self
        DiaryTableView.dataSource = self
        
    }
    
}
