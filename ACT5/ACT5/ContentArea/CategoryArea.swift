//
//  CategoryArea.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/23.
//

import SwiftUI

struct CategoryArea: View {
    let categories = ["월","화","수","목","금","토","일","신작"]
    let imageHeight = UIScreen.main.bounds.height
    
    @State private var selected: String = "월"
//    @Binding var selected: String
    
    var body: some View {
        VStack(spacing: 0){
            navigationBarArea(selected: $selected)
            Divider()
                .padding(.bottom, 6)
            ContentArea(selected: $selected)
        }
        .padding(.bottom, 20)
        .frame(height: 827)
    }
}

struct CategoryArea_Previews: PreviewProvider {
    static var previews: some View {
        CategoryArea()
    }
}
