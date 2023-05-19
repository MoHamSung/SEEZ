//
//  SwipePromotion.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct SwipePromotion: View {
    var body: some View {
        let dotAppearance = UIPageControl.appearance()
            
        
            TabView {
                ForEach(SwipeCotents) { SwipeContent in
                    HStack(alignment: .top, spacing: 0) {
                        Image(systemName: SwipeContent.icon)
                            .font(.system(size: SwipeContent.icon_size, weight: .regular))
                            .padding(.top, 20)
                            .padding(.trailing, 12)
                            .padding(.bottom, 75)
                            //.border(.red)
                        
                        
                        VStack(alignment: .leading, spacing: 0){
                            Text("\(SwipeContent.text_title)")
                                .font(.system(size: 13, weight: .bold))
                                .foregroundColor(Color("ColorFontBlack"))
                                .padding(.top, 20)
                                .padding(.bottom, 4)
                            
                            Text("집으로 배송 받으세요. 아니면 Apple Store에서 재고 제품을 픽업하세요.")
                                .font(.system(size: 13))
                                .foregroundColor(Color("ColorFontGray"))
                                .padding(.bottom, 4)
                            
                            Text("더알아보기")
                                .font(.system(size: 12))
                                .foregroundColor(Color("ColorFontBlue"))
                                .padding(.bottom, 48)
                        }
                        .border(.blue)
                    }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                
            }
            .frame(height: 138)
            .tabViewStyle(.page)
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .lightGray
            }
            .border(.green)
            
        
    }

}

struct SwipePromotion_Previews: PreviewProvider {
    static var previews: some View {
        SwipePromotion()
    }
}
