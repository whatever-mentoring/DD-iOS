//
//  KindergartensDiaryViewController.swift
//  DD-iOS
//
//  Created by zaehorang on 2023/09/07.
//

import UIKit

class KindergartensDiaryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var diarySelectionTableView: UITableView!
    
    // data 불러오기
    let diarySelectList = DiaryList.data

    // TableViewCell 높이 조절
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    // TableViewCell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // TableViewCell 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        return diarySelectList.count
    }
    
    let cellName = "DiarySelectTableViewCell"
    let cellReuseIdentifire = "diaryselectionCell"
    
    // TableView 출력
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = diarySelectionTableView.dequeueReusableCell(withIdentifier: cellReuseIdentifire, for: indexPath) as! DiarySelectTableViewCell
        let target = diarySelectList[indexPath.section]
        
        cell.diarySelectImage?.image = UIImage(named: target.diarylistImage)
        cell.diarySelectName?.text = target.diarylistName
        cell.diarySelectDetail?.text = target.diarylistDetail
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerXib()
        
        diarySelectionTableView.delegate = self
        diarySelectionTableView.dataSource = self
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: cellName, bundle: nil)
        diarySelectionTableView.register(nibName, forCellReuseIdentifier: cellReuseIdentifire)
    }
    
}
