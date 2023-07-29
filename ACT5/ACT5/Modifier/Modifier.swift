//
//  Modifier.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/18.
//

import SwiftUI

struct TextStyleModifier: ViewModifier {
    var fontSize: Double
    var fontWeight: Font.Weight
    var fontColor: String
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundStyle(Color("\(fontColor)"))
    }
}

extension View {    
    func customTextStyle(fontSize: Double, fontWeight: Font.Weight, fontColor: String) -> some View {
        self.modifier(TextStyleModifier(fontSize: fontSize, fontWeight: fontWeight, fontColor: fontColor))
    }
}
