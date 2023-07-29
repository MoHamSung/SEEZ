//
//  Practice3.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/23.
//

import SwiftUI

struct Practice3: View {
    let weekDay = ["월","화","수","목","금","토","일","신간"]
    @State private var selected: String = ""
    @Namespace private var namespace2
    
    var body: some View {
        HStack {
            ForEach(weekDay, id: \.self) { category in
                ZStack(alignment: .bottom) {
                    if selected == category {
                        Rectangle()
                            .fill(Color("FontGreen"))
                            .matchedGeometryEffect(id: "category_background", in: namespace2)
                            .frame(width: 35)
                            .frame(height: 2)
                            .offset(y: 10)
                    }
    
                    
                    Text(category)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(selected == category ? Color("FontGreen") : Color("FontBlack"))
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selected = category
                    }
                }
            }
        }
        .padding()
    }
    
//    private func calculateRectangleWidth() -> CGFloat {
//        let currentWeekDayIndex = weekDay[currentWeekDayIndex]
//        let textWidth = currentWeekDayIndex.size(withAttributes: [.font: UIFont.systemFont(ofSize: 14.0)]).width
//        return textWidth + (2 * textHorizontalPadding)
//    }
}

struct Practice3_Previews: PreviewProvider {
    static var previews: some View {
        Practice3()
    }
}
