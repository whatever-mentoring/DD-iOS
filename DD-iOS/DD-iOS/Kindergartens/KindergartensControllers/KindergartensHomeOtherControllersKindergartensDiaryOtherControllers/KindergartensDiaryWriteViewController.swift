//
//  KindergartensDiaryWriteViewController.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/13.
//

import UIKit

class KindergartensDiaryWriteViewController: UIViewController {
    
    @IBOutlet var boarderView5: UIView!
    @IBOutlet var boarderView4: UIView!
    @IBOutlet var boarderView3: UIView!
    @IBOutlet var boarderView2: UIView!
    @IBOutlet var boarderView1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 테두리 둥글게
        boarderView1?.layer.cornerRadius = 4
        boarderView2?.layer.cornerRadius = 4
        boarderView3?.layer.cornerRadius = 4
        boarderView4?.layer.cornerRadius = 4
        boarderView5?.layer.cornerRadius = 4
        // 테두리 두께
        boarderView1?.layer.borderWidth = 1
        boarderView2?.layer.borderWidth = 1
        boarderView3?.layer.borderWidth = 1
        boarderView4?.layer.borderWidth = 1
        boarderView5?.layer.borderWidth = 1
        // 테두리 컬러
        boarderView1?.layer.borderColor = UIColor.lightGray.cgColor
        boarderView2?.layer.borderColor = UIColor.lightGray.cgColor
        boarderView3?.layer.borderColor = UIColor.lightGray.cgColor
        boarderView4?.layer.borderColor = UIColor.lightGray.cgColor
        boarderView5?.layer.borderColor = UIColor.lightGray.cgColor
        // 배경색 투명하게
        boarderView1.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.0)
        boarderView2.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.0)
        boarderView3.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.0)
        boarderView4.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.0)
        boarderView5.backgroundColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.0)
        boarderView1?.isOpaque = false
        boarderView2?.isOpaque = false
        boarderView3?.isOpaque = false
        boarderView4?.isOpaque = false
        boarderView5?.isOpaque = false
    }
  


}
