//
//  SwipePromotion.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct SwipePromotion: View {
    
    var swipePromotions = [
        SwipePromotionModel(index: 1, icon: "shippingbox", icon_size: 36, text_title: "무료 배송", text_info: "집으로 배송 받으세요. 아니면 Apple Store에서 재고 제품을 픽업하세요.", more_padding_bottom: 48),
        SwipePromotionModel(index: 2, icon: "macbook.and.iphone", icon_size: 31, text_title: "Apple Trade In", text_info: "iPhone 8 이후 모델을 보상 판매하면 iPhone 14\n 또는 iPhone 14 Pro 구입 시 사용할 수 있는 ₩40,000 ~\n ₩780,000 상당의 크레딧이.*", more_padding_bottom: 32),
        SwipePromotionModel(index: 3, icon: "airpodspro.chargingcase.wireless", icon_size: 31, text_title: "Airpod Pro", text_info: "에어팟 프로를 잃어버렸습니다\n 제발 제 에어팟 프로를 찾아주세요.\n찾아주신 분에겐 ₩20,000 상당의 크레딧이.*", more_padding_bottom: 32)
    ]
    
    
    var body: some View {
        let dotAppearance = UIPageControl.appearance()
            TabView {
                ForEach(swipePromotions) { swipePromotion in
                    HStack(alignment: .top, spacing: 0) {
                        Image(systemName: swipePromotion.icon)
                            .font(.system(size: swipePromotion.icon_size, weight: .regular))
                            .padding(.top, 20)
                            .padding(.trailing, 12)
                            .padding(.bottom, 75)
                            .padding(.leading, 20)
                        
                        
                        VStack(alignment: .leading, spacing: 0){
                            Text("\(swipePromotion.text_title)")
                                .font(.system(size: 13, weight: .bold))
                                .foregroundColor(Color("ColorFontBlack"))
                                .padding(.top, 20)
                                .padding(.bottom, 4)
                            
                            Text("\(swipePromotion.text_info)")
                                .font(.system(size: 13))
                                .foregroundColor(Color("ColorFontGray"))
                                .padding(.bottom, 4)
                            
                            Text("더알아보기")
                                .font(.system(size: 12))
                                .foregroundColor(Color("ColorFontBlue"))
                              //  .padding(.bottom, 48)
                            
                            Spacer()
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)

                }
                
            }
            .frame(height: 138)
            .tabViewStyle(.page)
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .lightGray
            }
            //.border(.green)
    }

}

struct SwipePromotion_Previews: PreviewProvider {
    static var previews: some View {
        SwipePromotion()
    }
}
