//
//  ScrollPractice2.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/28.
//

import SwiftUI

struct ScrollPractice2: View {
    @State var wholePracticeViewHeight : CGFloat
    @State var ImgDAreaHeight : CGFloat
    @State var ImgEAreaHeight : CGFloat
    @State var maltyMouthAreaHeight: CGFloat
    
    @State private var scrollPosition : CGPoint = .zero
    @State var bottomBtnOffsetY : Double = 200
    
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView{
                VStack(spacing: 0){
                    ImgAArea()
                    ImgBArea()
                    ImgCArea()
                    VStack(spacing: 0){
                        ImgDArea(maltyMouthAreaHeight : $maltyMouthAreaHeight)
                            .background(
                                GeometryReader { proxy -> Color in
                                    DispatchQueue.main.async{
                                        ImgDAreaHeight = proxy.size.height
                                    }
                                    return Color.clear
                                }
                            )
                        ImgEArea()
                            .background(
                                GeometryReader { proxy -> Color in
                                    DispatchQueue.main.async{
                                        ImgEAreaHeight = proxy.size.height
                                    }
                                    return Color.clear
                                }
                            )
                    }
                    
                }
                .background(
                    GeometryReader { proxy -> Color in
                        DispatchQueue.main.async{
                            wholePracticeViewHeight = proxy.size.height
                        }
                        return Color.clear
                    }
                )
                
                .background(GeometryReader { geometry in
                    Color.clear
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                })
                
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    self.scrollPosition = value
                    
                    //                    print(scrollPosition.y - UIScreen.main.bounds.height)
                    
                    if(scrollPosition.y - UIScreen.main.bounds.height) > -(wholePracticeViewHeight - ((ImgDAreaHeight + ImgEAreaHeight) - maltyMouthAreaHeight)){
                        withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)) {
                            bottomBtnOffsetY = -70
                        }
                    } else {
                        withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)) {
                            bottomBtnOffsetY = 200
                        }
                    }
                }
            }
            
        
            BottomButton()
                .padding(.horizontal, 16)
                .offset(x:0, y: bottomBtnOffsetY)
            
            
//            Button(action: {
//                print("너무행복해")
//            }, label: {
//                Text("이제 그만")
//                    .font(.system(size: 23, weight: .bold))
//                    .foregroundColor(Color("ColorBtnDeepPurple"))
//                    .padding(.horizontal, 150)
//                    .padding(.vertical, 20)
//                    .background(.thinMaterial)
//                    .cornerRadius(17)
//            })
//            .offset(x:0, y: bottomBtnOffsetY)
            
          
            
        }
    }
}

struct ScrollPractice2_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPractice2(wholePracticeViewHeight: 30, ImgDAreaHeight: 30, ImgEAreaHeight: 30, maltyMouthAreaHeight: 30)
    }
}
