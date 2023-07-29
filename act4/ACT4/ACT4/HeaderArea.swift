//
//  ColorSwatchCard.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/19.
//

import SwiftUI

struct HeaderArea: View {
    @State private var currentImageIndex = 0
    
    let images = [
        "ImgMain01",
        "ImgMain02",
        "ImgMain03",
        "ImgMain04"
    ]
    
    let colorText = [
        "딥 퍼플",
        "골드",
        "실버",
        "스페이스 블랙"
    ]
    
    let circleColors: [Color] = [
        Color("ColorBtnDeepPurple"),Color("ColorBtnGold"), Color("ColorBtnSilver"), Color("ColorBtnSpaceBlack")
    ]
    
    
    var body: some View {
        ZStack{
            Color("ColorFontBlack")
            Image(images[currentImageIndex])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .overlay(alignment: .top){
                    VStack{
                        VStack(spacing: 0){
                            Text("iPhone 14 Pro")
                                .foregroundColor(Color("ColorFontWhite"))
                                .font(.system(size: 20, weight: .semibold))
                                .padding(.bottom, 6)
                            Text("프로 그 이상.")
                                .foregroundColor(Color("ColorFontWhite"))
                                .font(.system(size: 40, weight: .semibold))
                        }.padding(.top, 70)
                        
                        Spacer()
                        
                        
                        VStack (spacing: 0){
                            Text(colorText[currentImageIndex])
                                .foregroundColor(Color("ColorFontDarkGray"))
                                .font(.system(size: 10))
                                .padding(.bottom, 14)
                            
                            HStack {
                                ForEach(0..<4) { index in
                                    Circle()
                                        .foregroundColor(circleColors[index])
                                        .frame(width: 23, height: 23)
                                        .overlay(
                                            Circle()
                                                .stroke(Color("ColorBtnBlue"), lineWidth: index == currentImageIndex ? 1 : 0)
                                                .frame(width: 31, height: 31)
                                        )
                                        .onTapGesture {
                                            currentImageIndex = index
                                        }
                                        .padding(.trailing, 11)
                                }
                            }
                            .padding(.bottom, 26)
                            
                            Text("AR로 보기 \(Image(systemName: "arkit"))")
                                .foregroundColor(Color("ColorBtnBlue"))
                                .font(.system(size: 14, weight: .semibold))
                                
                            
                        }
                        
                    }
                }
                .padding(.bottom, 30)
        }
    }
}

struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
