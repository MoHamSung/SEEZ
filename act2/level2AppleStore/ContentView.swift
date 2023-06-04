//
//  ContentView.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
           GeometryReader{ proxy in
                ScrollView{
                    VStack(spacing: 0) {
                        Header()
                            .padding(.horizontal, 20)
                        
                        SwipePromotion()
                        
                        Divider()
                        ProductItem()
                        SnapCarousel()
                            .frame(height: proxy.size.height - 70)
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

