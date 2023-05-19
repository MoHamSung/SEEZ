//
//  ContentView.swift
//  level1Chulseuk
//
//  Created by seunghoria on 2023/04/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color("BackGroundColor")
                .edgesIgnoringSafeArea(.all)
        
            VStack(spacing: 0){
                HeaderView()
                    .border(.red)
                Group{
                    Group {
                        Text("월클 디벨로퍼 SEEZ.")
                            .padding(.bottom, 8)
                        Text("오늘도 화이팅하세요!")
                            .padding(.bottom, 38)
                }
                .foregroundColor(Color("fontBlack"))
                .font(.custom("SF-Pro", size: 18))
                
                    
                FlipCardView()
                ButtonView()

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 25)
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
