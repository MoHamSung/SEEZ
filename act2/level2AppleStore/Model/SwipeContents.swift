//
//  SwipeContent.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct SwipeContents: Identifiable {
    let id = UUID()
    var index: Int
    var icon: String
    var icon_size: Double
    var text_title: String
    var text_info: String
}


var SwipeCotents = [
    SwipeContents(index: 1, icon: "shippingbox", icon_size: 36, text_title: "무료 배송", text_info: "집으로 배송 받으세요. 아니면 Apple Store에서 재고 제품을 픽업하세요."),
    SwipeContents(index: 2, icon: "macbook.and.iphone", icon_size: 31, text_title: "Apple Trade In", text_info: "iPhone 8 이후 모델을 보상 판매하면 iPhone 14 또는 iPhone 14 Pro 구입 시 사용할 수 있는 ₩40,000 ~ ₩780,000 상당의 크레딧이.*"),
    SwipeContents(index: 3, icon: "airpodspro.chargingcase.wireless", icon_size: 31, text_title: "Airpod Pro", text_info: "에어팟 프로를 잃어버렸습니다. 제발 제 에어팟 프로를 찾아주세요. 찾아주신 분에겐 ₩20,000 상당의 크레딧이.*")
    
]
