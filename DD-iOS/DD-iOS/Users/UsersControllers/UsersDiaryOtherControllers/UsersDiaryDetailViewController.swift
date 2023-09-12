//
//  UserDiaryDetailViewController.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/12.
//

import UIKit

class UsersDiaryDetailViewController: UIViewController {

    var diaryData: Diary?
        
    @IBOutlet var detailBackButton: UIBarButtonItem!
        
    @IBOutlet var diarydetailDetailLabel: UILabel!
    @IBOutlet var diarydetailTitleLabel: UILabel!
    @IBOutlet var diarydetailDateLabel: UILabel!
    @IBOutlet var diarydetailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func OnClick_Back_Button(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
