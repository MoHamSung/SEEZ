//
//  SnapCarousel.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/19.
//

import SwiftUI

struct SnapCarousel: View {
    
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var swipeProducts = [
        SwipeProductModel(index: 1, productImage: "ImgSwipeProduct1", product_title: "다채롭게 만개한\n어버이날 선물.", product_title_color: "ColorFontBlack", product_info: "쉽게 선물 쇼핑하기.", product_info_color: "ColorFontGrayNew"),
        SwipeProductModel(index: 2, productImage: "ImgSwipeProduct2", product_title: "iPhone 14Pro\n딥 퍼플",product_title_color: "ColorFontWhite", product_info: "몽환적인 색감, 색다른 경험.", product_info_color: "ColorFontGrayNew"),
        SwipeProductModel(index: 3, productImage: "ImgSwipeProduct3", product_title: "MacBook Pro 14\n및 16",product_title_color: "ColorFontWhite", product_info: "이거 문구를 발견하고, 톡방에 메세지를\n먼저 보내는 사람은 페페의 선물이!",product_info_color: "ColorFontGrayNew")
    ]
    
    var body: some View{
        VStack(alignment: .leading, spacing: 0) {
            Text("추천")
                .font(.system(size: 28))
                .fontWeight(.semibold)
                .padding(.leading, 20)
                .padding(.vertical, 38)
            
            GeometryReader{proxy in
                let width = proxy.size.width - 50
                
                HStack(spacing: 20) {
                    ForEach(swipeProducts){swipeProduct in
                        Image(swipeProduct.productImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 335)
                            .shadow(color: .black.opacity(0.16), radius: 32, x: 0, y: 4)
                            .overlay(
                                VStack(alignment: .leading, spacing: 0){
                                    Text(swipeProduct.product_title)
                                        .font(.system(size: 26, weight: .semibold))
                                        .foregroundColor(Color(swipeProduct.product_title_color))
                                        .padding(.bottom, 8)
                                        
                                   
                                    Text(swipeProduct.product_info)
                                        .font(.system(size: 14))
                                        .foregroundColor(Color(swipeProduct.product_info_color))
                                 
                                }
                                .padding(.horizontal, 20)
                                .offset(y:24), alignment:.topLeading
                                
                            )
                    }
                }
                .padding(.horizontal, 20)
                .offset(x: (CGFloat(currentIndex) * -width) + offset)
                .gesture(
                    DragGesture()
                        .updating($offset, body: { value, out, _ in
                            out = value.translation.width
                        })
                        .onEnded({ value in
                            let offsetX = value.translation.width
                            print(offsetX)
                            let progress = -offsetX / width
                            print(progress)
                            let roundIndex = progress.rounded()
                            
                            currentIndex = max(min(currentIndex + Int(roundIndex), swipeProducts.count - 1), 0)
                        })
                )
            }

        }
        .animation(.easeInOut, value: offset == 0)
        // 여기서 밑 부분 흰색을 자르고 갈 수 없겠죠?
        
        
    }
}

struct SnapCarousel_Previews: PreviewProvider {
    static var previews: some View {
        SnapCarousel()
    }
}
