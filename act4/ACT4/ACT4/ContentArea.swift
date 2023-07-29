//
//  DescriptionContainer.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/19.
//

import SwiftUI

struct ContentArea: View {
    var body: some View {
        ScrollView{
            ZStack{
                Color("ColorBgBlack")
                VStack(spacing: 20){
                    imageLayout(imageTitle: "ImgContentL01", overlayAlignment: .top, leadingOffset: 0, topOffset: 40) {
                        Text("채드도 놀란")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color("ColorFontWhite"))
                        
                        Text("iPhone 14 Pro")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(Color("ColorFontWhite"))
                        
                    }
                    
                    imageLayout(imageTitle: "ImgContentL02", overlayAlignment: .top, leadingOffset: 0, topOffset: 40) {
                        Text("Dynamic Island")
                            .customTextStyle(fontSize: 20, fontWeight: .medium, fontColor: "ColorFontWhite", textAlignment: .center)
                            .padding(.bottom, 4)
                        
                        Text("iPhone을 다루는 완전히 \n새로운 방법.")
                            .customTextStyle(fontSize: 24, fontWeight: .bold, fontColor: "ColorFontWhite", textAlignment: .center)
                        
                    }
                    
                    imageLayout(imageTitle: "ImgContentSm01", overlayAlignment: .topLeading, leadingOffset: 40, topOffset: 37) {
                        Text("그 모든걸\n가능케 하는\n브레인.")
                            .customLinear(fontSize: 22, fontWeight: .bold, textAlignment: .leading)
                    }
                    
                    imageLayout(imageTitle: "ImgContentSm02", overlayAlignment: .center, leadingOffset: 0, topOffset: 0) {
                        Text("오래 가는 배터리")
                            .customLinear(fontSize: 22, fontWeight: .bold, textAlignment: .center)
                        
                        Text("온종일,")
                            .customLinear(fontSize: 54, fontWeight: .bold, textAlignment: .center)
                        
                        Text("올인.")
                            .customLinear(fontSize: 54, fontWeight: .bold, textAlignment: .center)
                    }
                    
                    
                    imageLayout(imageTitle: "ImgContentL03", overlayAlignment: .top, leadingOffset: 0, topOffset: 40) {
                            Text("상시표시형 디스플레이.\n잠긴 동안에도\n잠드는 법 없이.")
                                .customLinear(fontSize: 24, fontWeight: .bold, textAlignment: .center)
                    }
                    
                    
                    imageLayout(imageTitle: "ImgContentL04", overlayAlignment: .top, leadingOffset: 0, topOffset: 42) {
                        Text("Ceramic Shield")
                            .customTextStyle(fontSize: 20, fontWeight: .medium, fontColor: "ColorFontGray", textAlignment: .center)
                            .padding(.bottom, 4)
                        
                        Text("그 어떤 스마트폰\n글래스보다 견고한 소재.")
                            .customLinear(fontSize: 24, fontWeight: .bold, textAlignment: .center)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
