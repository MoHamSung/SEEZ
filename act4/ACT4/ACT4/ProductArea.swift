//
//  moreInfo.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/19.
//

import SwiftUI

struct ProductArea: View {
    @Binding var partOfProductAreaHeight: CGFloat
    
    var body: some View {
        
        ZStack{
            Color("ColorBgGray")
            
            ScrollView{
                VStack(spacing: 20){
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 173)
                        .foregroundColor(Color("ColorBgWhite"))
                        .overlay(
                            VStack(spacing:6){
                                Text("iPhone 14 Pro 더 깊이 살펴보기")
                                    .font(.system(size: 24, weight: .medium))
                                
                                Text("apple.com에서 더 알아보기")
                                    .font(.system(size: 12, weight: .medium))
                                    .foregroundColor(Color("ColorBtnBlue"))
                            }
                        ).background(
                            GeometryReader { proxy -> Color in
                                DispatchQueue.main.async{
                                    partOfProductAreaHeight = proxy.size.height
                                }
                                return Color.clear
                            }
                        )
                    
                    Image("ImgProduct01")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color("ColorBgWhite"))
                        .overlay(
                            VStack(spacing:0){
                                Text("iPhone 14 Pro")
                                    .font(.system(size: 26, weight: .bold))
                                    .padding(.top, 60)
                                    .padding(.bottom, 10)
                                
                                Spacer()
                                
                                Text("구입하기")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundColor(Color("ColorFontWhite"))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 14)
                                    .background(Color("ColorBtnBlue"))
                                    .cornerRadius(20)
                                    .padding(.bottom, 14)
                                
                                Text("₩ 1,550,000부터")
                                    .font(.system(size: 10, weight: .regular))
                                    .foregroundColor(Color("ColorBgBlack"))
                                    .padding(.bottom, 51)
                                
                            }
                        )
                    
                    
                    
                }
               // .padding(.top, 20)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
        ProductArea(partOfProductAreaHeight: .constant(30))
    }
}
