//
//  CardFront.swift
//  chulseukDevelop
//
//  Created by seunghoria on 2023/05/08.
//

import SwiftUI

struct CardFront: View {
    var body: some View {
        Rectangle()
            .fill(Color("ColorCardBackground"))
            .frame(maxWidth: .infinity)
            .frame(height: 463)
            .cornerRadius(24)
            .shadow(color: Color("CardShadowColor"), radius: 17, x: 0, y: 4)
            .overlay(
                VStack(spacing: 0){
                    Spacer()
                    
                    Image("ImgChulseukIcon")
                        .resizable()
                        .frame(width: 152, height: 226)
                        .padding(.bottom, 42)
                    
                    Group{
                        Text("오늘은 아카데미 휴일")
                            .padding(.bottom, 6)
                        
                        Text("푹 쉬고 다음에 만나요.")
                            .padding(.bottom, 16)
                    }.font(.custom("SF-Pro", size: 20))
                        
                    
                    HStack(spacing: 1){
                       Text("출석 규정 보러가기")
                            .font(.custom("SF-Pro", size: 13))
                            .foregroundColor(Color("ColorFontPurple"))
                       Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 8, height: 7)
                        
                    }.padding(.bottom, 30)
                })
            .padding(.bottom, 30)
    }
}

struct CardFront_Previews: PreviewProvider {
    static var previews: some View {
        CardFront()
    }
}
