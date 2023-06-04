//
//  SwipeContent.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct SwipePromotionModel: Identifiable {
    let id = UUID()
    var index: Int
    var icon: String
    var icon_size: Double
    var text_title: String
    var text_info: String
    var more_padding_bottom: Int
}

struct SwipeProductModel: Identifiable {
    var id = UUID()
    var index : Int
    var productImage: String
    var product_title: String
    var product_title_color: String
    var product_info: String
    var product_info_color: String
    
}

struct ProductCard: Identifiable {
    var id = UUID()
    var index : Int
    var productCard_image: String
    var productCard_item: String
    var productCardItem_info: String
}












