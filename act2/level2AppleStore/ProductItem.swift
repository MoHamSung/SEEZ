//
//  Products.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/19.
//

import SwiftUI

struct ProductItem: View {
    
    var productCards = [
        ProductCard(index: 1, productCard_image: "ImgPhone", productCard_item: "iPhone14", productCardItem_info: "iPhone 14 그리고 큼직한 사이즈의 iPhone 14 Plus. 획기적인 \n도약을 이뤄낸 배터리 성능. 프로급 카메라. 6가지 멋진 컬러."),
        ProductCard(index: 2, productCard_image: "ImgTablet", productCard_item: "iPad", productCardItem_info: "다양한 일상 작업에 맞는 완전히 새롭고, 컬러풀한 iPad.   새로운\niPad를 소개합니다.")
    ]
    
    
    var body: some View {
        ForEach(productCards) { productCard in
            VStack(alignment: .leading, spacing: 0) {
                Image(productCard.productCard_image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .frame(height: 605)
                    .overlay (
                        VStack(alignment: .leading, spacing: 0){
                            Text("New")
                                .foregroundColor(Color("ColorFontGrayNew"))
                                .font(.system(size: 10, weight: .semibold))
                                .padding(.bottom, 2)
                                
                            
                            Text(productCard.productCard_item)
                                .font(.system(size: 30, weight: .semibold))
                                .padding(.bottom, 12)
                           
                            
                            Text(productCard.productCardItem_info)
                                .font(.system(size: 13))
                         
                        }
                        .padding(.horizontal, 20)
                        .offset(y:24), alignment:.topLeading
                    )
//                    .border(.blue)
                
                    PriceArea()
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
                
            
        }
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            ProductItem()
        }
    }
}
