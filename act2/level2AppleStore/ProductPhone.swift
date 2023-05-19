//
//  Products.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/19.
//

import SwiftUI

struct ProductPhone: View {
    var body: some View {
        Image("ImgPhone")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .frame(height: 605)
            .overlay {
                Text("New")
                    .foregroundColor(Color("ColorFontGrayNew"))
                    .font(.system(size: 10, weight: .semibold))
                    .position(x: 20, y: 24)
                
                Text("iPhone14")
                    .font(.system(size: 30, weight: .semibold))
                    .position(x: 20, y: 38)
                
                Text("iPhone 14 그리고 큼직한 사이즈의 iPhone 14 Plus. 획기적인")
                    .font(.system(size: 13))
                    .position(x: 20, y: 86)
                
                Text("도약을 이뤄낸 배터리 성능. 프로급 카메라. 6가지 멋진 컬러.")
                    .font(.system(size: 13))
                    .position(x: 20, y: 105)
            }
            .border(.blue)
    }
}

struct ProductPhone_Previews: PreviewProvider {
    static var previews: some View {
        ProductPhone()
    }
}
