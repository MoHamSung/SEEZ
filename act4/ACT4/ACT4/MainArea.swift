//
//  MainArea.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/14.
//

import SwiftUI

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue = CGPoint.zero
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}


struct MainArea: View {
    @State var wholeViewHeight : CGFloat
    @State var productAreaHeight : CGFloat
    @State var footerAreaHeight : CGFloat
    @State var partOfProductAreaHeight: CGFloat
    
    @State private var scrollPosition : CGPoint = .zero
    @State var bottomBtnOffsetY : Double = 200
    
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView{
                VStack(spacing:20){
                    VStack(spacing: 20){
                        HeaderArea()
                        ContentArea()
                    }
                    .background(Color("ColorBgBlack"))
                    
                    
                    VStack(spacing : 0){
                        ProductArea(partOfProductAreaHeight : $partOfProductAreaHeight)
                            .background(
                                GeometryReader { proxy -> Color in
                                    DispatchQueue.main.async{
                                        productAreaHeight = proxy.size.height
                                    }
                                    return Color.clear
                                }
                            )
                        FooterArea()
                            .background(
                                GeometryReader { proxy -> Color in
                                    DispatchQueue.main.async{
                                        footerAreaHeight = proxy.size.height
                                    }
                                    return Color.clear
                                }
                            )
                    }
                }
                .background(
                    GeometryReader { proxy -> Color in
                        DispatchQueue.main.async{
                            wholeViewHeight = proxy.size.height
                        }
                        return Color.clear
                    }
                )
                
                
                //스크롤 offset 변화 감지
                .background(GeometryReader { geometry in
                    Color.clear
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
                })
                
                .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                    self.scrollPosition = value
                    
//                    print(scrollPosition.y - UIScreen.main.bounds.height)
                    
                    if(scrollPosition.y - UIScreen.main.bounds.height) > -(wholeViewHeight - ((productAreaHeight + footerAreaHeight) - partOfProductAreaHeight)){
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
        }
        .background(Color("ColorBgGray"))
        .edgesIgnoringSafeArea(.all)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)) {
                    bottomBtnOffsetY = -70
                }
            }
        }
    }
}






struct MainArea_Previews: PreviewProvider {
    static var previews: some View {
        MainArea(wholeViewHeight: 30, productAreaHeight: 30, footerAreaHeight: 30, partOfProductAreaHeight: 30)
    }
}

