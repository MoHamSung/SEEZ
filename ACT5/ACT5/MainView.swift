//
//  ContentView.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack(spacing: 0) {
                    HeaderView()
                    CategoryArea()
                    ZStack{
                        Color("BgWhite300")
                        VStack(spacing: 0){
                            ButtonArea()
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                            FooterArea()
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
