//
//  practice4.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/23.
//

import SwiftUI

struct navigationBarArea: View {
    let categories = ["월","화","수","목","금","토","일","신작"]
    @Binding var selected: String
    @Namespace private var namespace3
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { category in
                Text(category)
                    .font(.system(size : 12, weight: selected == category ? .bold : .medium))
                    .padding(.horizontal, categories.last != category ? 4.5 : 0)
                    .padding(.vertical, 12)
                    .foregroundColor(selected == category ? Color("FontGreen") : Color("FontBlack"))
                    .overlay(alignment : .bottom){
                        if selected == category {
                            activeStroke()
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring(response: 0.6, dampingFraction: 0.6)){
                            selected = category
                        }
                    }
                
                if categories.last != category {
                    Spacer()
                }
                
            }
            
        }
        .padding(.horizontal, 15)
    }
    
    
    /// activeStroke 따로 View
    private func activeStroke() -> some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(Color("FontGreen"))
            .matchedGeometryEffect(id: "activeStroke", in: namespace3)
    }
}

struct navigationBarArea_Previews: PreviewProvider {
    static var previews: some View {
        navigationBarArea(selected: .constant("월"))
    }
}
