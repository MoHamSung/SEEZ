//
//  Practice.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct Practice: View {
    var body: some View {
        let dotAppearance = UIPageControl.appearance()
        
        ZStack{
            Color(.red)
            TabView {
                // 페이지 1의 내용
                Text("페이지 1")

                
                // 페이지 2의 내용
                Text("페이지 2")

                
                // 추가 페이지들...
            }
            .tabViewStyle(.page)
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .lightGray
            }
            
        }
    }
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        Practice()
    }
}
