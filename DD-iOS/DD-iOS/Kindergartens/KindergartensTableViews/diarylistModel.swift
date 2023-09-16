//
//  diarylistModel.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/11.
//

import UIKit


struct DiaryList {
    let diarylistImage: String
    let diarylistName: String
    let diarylistDetail: String
}

extension DiaryList {
    static var data = [
        DiaryList(diarylistImage: "img1.jpg", diarylistName: "오레오", diarylistDetail: "비숑 10살 여 (중성화)"),
        DiaryList(diarylistImage: "img2.webp", diarylistName: "송송이", diarylistDetail: "비숑 10살 여 (중성화)"),
        DiaryList(diarylistImage: "img3.jpeg", diarylistName: "달래", diarylistDetail: "비숑 10살 여 (중성화)"),
        DiaryList(diarylistImage: "img1.jpg", diarylistName: "초코", diarylistDetail: "비숑 10살 여 (중성화)"),
        DiaryList(diarylistImage: "img2.webp", diarylistName: "메이", diarylistDetail: "비숑 10살 여 (중성화)"),
        DiaryList(diarylistImage: "img3.jpeg", diarylistName: "호두", diarylistDetail: "비숑 10살 여 (중성화)"),
        DiaryList(diarylistImage: "img1.jpg", diarylistName: "당근", diarylistDetail: "비숑 10살 여 (중성화)"),
        DiaryList(diarylistImage: "img2.webp", diarylistName: "셰익스피어", diarylistDetail: "비숑 10살 여 (중성화)")
    ]
}
