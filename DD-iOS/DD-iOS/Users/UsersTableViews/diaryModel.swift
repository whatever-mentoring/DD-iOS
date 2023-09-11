//
//  diaryModel.swift
//  DD-iOS
//
//  Created by 이예빈 on 2023/09/08.
//

import UIKit


struct Diary {
    let diaryDate: String
    let diaryTitle: String
    let diaryDetail: String
    let diaryImage: String
}

extension Diary {
   static var data = [
    Diary(diaryDate: "2023.09.07 돌돌이 일기", diaryTitle: "목욕 넘무 실허...", diaryDetail: "주인아,, 오늘 내가 지인짜 싫어하는 목욕하는 날이다. 다른 친구들은 신나보이더라 장난도 치고... 미니 쌤이 목욕 다하고 잘했다고 간식 주셔서 조금 기분이 나아졌어 내일도 목욕하는 거.. 아니지?", diaryImage: "img1.jpg"),
    Diary(diaryDate: "2023.09.06 돌돌이 일기", diaryTitle: "대박 잘 잤어 오늘 !", diaryDetail: "주인아,, 내가 어제 밤에 잠도 안자고 괴롭혔잖아.. 그래서 그런지 유치원 가자마자 잠만 잤어 나영쌤이 밥 먹으라고 깨우셨는데 잠이 쏟아지더라 최근에 배가 아팠었는데 그것 때문에 그런건가?", diaryImage: "img2.webp"),
    Diary(diaryDate: "2023.09.07 돌돌이 일기", diaryTitle: "목욕 넘무 실허...", diaryDetail: "주인아,, 오늘 내가 지인짜 싫어하는 목욕하는 날이다. 다른 친구들은 신나보이더라 장난도 치고... 미니 쌤이 목욕 다하고 잘했다고 간식 주셔서 조금 기분이 나아졌어 내일도 목욕하는 거.. 아니지?", diaryImage: "img3.jpeg"),
    Diary(diaryDate: "2023.09.06 돌돌이 일기", diaryTitle: "대박 잘 잤어 오늘 !", diaryDetail: "주인아,, 내가 어제 밤에 잠도 안자고 괴롭혔잖아.. 그래서 그런지 유치원 가자마자 잠만 잤어 나영쌤이 밥 먹으라고 깨우셨는데 잠이 쏟아지더라 최근에 배가 아팠었는데 그것 때문에 그런건가?", diaryImage: "img3.jpeg")
   ]
}
