//
//  UsersDiaryDetailViewController.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/08.
//

import UIKit

class DiaryDetailViewController: UIViewController {

    var diaryData: Diary?
    
    @IBOutlet var diarydetailDetailLabel: UILabel!
    @IBOutlet var diarydetailTitleLabel: UILabel!
    @IBOutlet var diarydetailDateLabel: UILabel!
    @IBOutlet var diarydetailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
