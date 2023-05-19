//
//  ProductTablet.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/19.
//

import SwiftUI

struct ProductTablet: View {
    var body: some View {
        Image("ImgTablet")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .frame(height: 605)
            .overlay {
                Text("New")
                    .foregroundColor(Color("ColorFontGrayNew"))
                    .font(.system(size: 10, weight: .semibold))
                    .position(x: 20, y: 24)
                
                Text("iPad")
                    .font(.system(size: 30, weight: .semibold))
                    .position(x: 20, y: 38)
                
                Text("다양한 일상 작업에 맞는 완전히 새롭고, 컬러풀한 iPad. 새로운 iPad를 소개합니다.")
                    .font(.system(size: 13))
                    .frame(width: 339, height: 36)
                    .position(x: 20, y: 86)
                
            }
            .border(.blue)
    }
}

struct ProductTablet_Previews: PreviewProvider {
    static var previews: some View {
        ProductTablet()
    }
}
