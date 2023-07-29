//
//  Practice2.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/23.
//

import SwiftUI

struct Practice2: View {
    @State private var selectedTab: Int = 0
    @State private var currentWeekDayIndex = 0
    
    @Namespace var namespace
    
    let weekDay = ["월","화","수","목","금","토","일","신간"]
    let textHorizontalPadding: CGFloat = 4.5
    
    var body: some View {
        VStack(spacing:0) {
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    ForEach(0..<weekDay.count, id:\.self) { index in
                        Text(weekDay[index])
                            .padding(.horizontal, textHorizontalPadding)
                            .padding(.vertical, 12)
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor( index == currentWeekDayIndex ? Color("FontGreen") : Color("FontBlack"))
                            .onTapGesture {
                                currentWeekDayIndex = index
                            }
                        
                    }
                    .frame(maxWidth: .infinity)
                }
                
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(Color("FontGreen"))
                    .frame(width: calculateRectangleWidth())
                    .matchedGeometryEffect(id: "recordText", in: namespace)
                    
            }
            
            Divider()
                .padding(.bottom, 6)
            
            // 선택된 탭에 따라 다른 뷰를 표시
                if currentWeekDayIndex == 0 {
                    MondayContent()
                } else if currentWeekDayIndex == 1 {
                    TuesdayContent()
                } else if currentWeekDayIndex == 2 {
                    WednesdayContent()
                } else if currentWeekDayIndex == 3 {
                    ThursdayContent()
                } else if currentWeekDayIndex == 4 {
                    FridayContent()
                } else if currentWeekDayIndex == 5 {
                    SaturdayContent()
                } else if currentWeekDayIndex == 6 {
                    SundayContent()
                } else if currentWeekDayIndex == 7 {
                    NewContent()
                }
           
            
            Spacer()
        }
        .padding(.bottom,10)
    }
    
    
    private func calculateRectangleWidth() -> CGFloat {
        let currentWeekDayIndex = weekDay[currentWeekDayIndex]
        let textWidth = currentWeekDayIndex.size(withAttributes: [.font: UIFont.systemFont(ofSize: 14.0)]).width
        return textWidth + (2 * textHorizontalPadding)
    }
}


struct Practice2_Previews: PreviewProvider {
    static var previews: some View {
        Practice2()
    }
}
