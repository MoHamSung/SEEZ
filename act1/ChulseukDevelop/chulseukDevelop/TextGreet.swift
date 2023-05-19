//
//  TextGreeting.swift
//  chulseukDevelop
//
//  Created by seunghoria on 2023/05/08.
//

import SwiftUI

struct TextGreet: View {
    var body: some View {
        Text("월클 디벨로퍼 SEEZ. \n오늘도 화이팅하세요!")
            .font(.custom("SF-Pro", size: 18))
            .lineSpacing(8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 50)
            .padding(.bottom, 38)
    }
}

struct TextGreet_Previews: PreviewProvider {
    static var previews: some View {
        TextGreet()
    }
}
