//
//  ButtonArea.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/04.
//

import SwiftUI

struct FooterArea: View {
    var body: some View {
        VStack(spacing: 0){
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 78)
                .foregroundColor(Color("BgWhite200"))
                .overlay(
                    Text("웹툰에서 제공되는 콘텐츠의 저작권은 저자 또는 제공처에 있으며,\n이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color("FontGray200"))
                        .frame(maxWidth: .infinity)
                )
                
               // .border(.red)
            
            Divider()
            
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 131)
                .foregroundColor(Color("BgWhite200"))
                .overlay(
                    VStack(spacing: 6){
                        HStack(spacing: 6){
                            Text("네이버웹툰 이용약관")
                                .customTextStyle(fontSize: 10, fontWeight: .regular, fontColor: "FontGray100")
                            Rectangle()
                                .frame(width: 0.7, height: 8)
                                .foregroundColor(Color("DividerGray"))
                            Text("전용상품권 이용약관")
                                .customTextStyle(fontSize: 10, fontWeight: .regular, fontColor: "FontGray100")
                            Rectangle()
                                .frame(width: 0.7, height: 8)
                                .foregroundColor(Color("DividerGray"))
                            Text("개인정보처리방침")
                                .customTextStyle(fontSize: 10, fontWeight: .regular, fontColor: "FontGray200")
                        }
                        HStack(spacing: 6){
                            Text("고색센터")
                                .customTextStyle(fontSize: 10, fontWeight: .regular, fontColor: "FontGray100")
                            Rectangle()
                                .frame(width: 0.7, height: 8)
                                .foregroundColor(Color("DividerGray"))
                            Text("오류신고")
                                .customTextStyle(fontSize: 10, fontWeight: .regular, fontColor: "FontGray100")
                        }
                        Text("ⓒ NAVER WEBTOON Limited")
                            .customTextStyle(fontSize: 10, fontWeight: .medium, fontColor: "FontGray100")
                            .padding(.top, 5)
                    }
                )
                //.border(.red)
        }
    }
}

struct FooterArea_Previews: PreviewProvider {
    static var previews: some View {
        FooterArea()
    }
}
