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
    
    init(index: Int, icon: String, icon_size: Double, text_title: String, text_info: String, more_padding_bottom: Int) {
        self.index = index
        self.icon = icon
        self.icon_size = icon_size
        self.text_title = text_title
        self.text_info = text_info
        self.more_padding_bottom = more_padding_bottom
    }
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












