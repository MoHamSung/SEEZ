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
            ScrollView{
                VStack(spacing: 0){
                    VStack(spacing: 0){
                        Header()
                        Divider()
                        SwipePromotion()
                    }
                    .padding(.horizontal, 20)
                    
                    VStack(spacing: 0) {
                        Divider()
                        ProductPhone()
                        PriceArea()
                        ProductTablet()
                        PriceArea()
                        
                        
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

