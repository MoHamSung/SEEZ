//
//  Modifier.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/25.
//

import SwiftUI

struct TextLinearModifer: ViewModifier {
    var fontSize: Double
    var fontWeight: Font.Weight
    var textAlignment: TextAlignment
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: fontWeight))
            .fontWeight(.bold)
            .foregroundStyle(
                LinearGradient(
                    colors: [Color("ColorFontPurpleStart"), Color("ColorFontPurpleEnd")],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .multilineTextAlignment(textAlignment)
    }
}


struct TextStyleModifier: ViewModifier {
    var fontSize: Double
    var fontWeight: Font.Weight
    var fontColor: String
    var textAlignment: TextAlignment
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: fontWeight))
            .foregroundStyle(Color("\(fontColor)"))
            .multilineTextAlignment(textAlignment)
    }
}

extension View {
    func customLinear(fontSize: Double, fontWeight: Font.Weight, textAlignment: TextAlignment) -> some View {
        self.modifier(TextLinearModifer(fontSize: fontSize, fontWeight: fontWeight, textAlignment: textAlignment))
    }
    
    func customTextStyle(fontSize: Double, fontWeight: Font.Weight, fontColor: String, textAlignment: TextAlignment) -> some View {
        self.modifier(TextStyleModifier(fontSize: fontSize, fontWeight: fontWeight, fontColor: fontColor, textAlignment: textAlignment))
    }
}

import SwiftUI

struct BubbleFont: View {
    var body: some View {
        ZStack {
            Color.black
            Text("321")
                .font(.system(size: 150))
                .modifier(BubbleFontModifier())
        }
    }
}

struct BubbleFontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.black)
            .fontDesign(.rounded)
            .foregroundStyle(
                .shadow(.inner(color: .pink.opacity(0.5), radius: 4, x: 2, y: 2))
                .shadow(.inner(color: .blue, radius: 4, x: -2, y: 0))
                .shadow(.inner(color: .yellow.opacity(0.5), radius: 4, x: 1.5, y: -2))
                .shadow(.inner(color: .white.opacity(0.5), radius: 4, x: 0, y: 2))
            )
    }
}

struct BubbleFont_Previews: PreviewProvider {
    static var previews: some View {
        BubbleFont()
    }
}
