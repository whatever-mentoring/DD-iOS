//
//  UserDiaryAlarmViewController.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/12.
//

import UIKit

class UserDiaryAlarmViewController: UIViewController {

        @IBOutlet var alarmBackButton: UIBarButtonItem!
        
        override func viewDidLoad() {
            super.viewDidLoad()

        }
        

        @IBAction func OnCllick_Back_Button(_ sender: Any) {
            self.navigationController?.popViewController(animated: true)
        }

}
