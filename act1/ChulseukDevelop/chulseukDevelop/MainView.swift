//
//  ContentView.swift
//  chulseukDevelop
//
//  Created by seunghoria on 2023/05/08.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack{
            Color("ColorBackground")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){                
                Header()
                    .border(.red)
                
                TextGreet()
                    .border(.blue)
                
                FlipCard()
                    .border(.green)
                
                ChulseukButton()
                    .border(.yellow)
                
            }.padding(.horizontal, 25)
            
            
        }//.background(Color("ColorBackground"))
//        .ignoresSafeArea(.all)
        
        
       
         
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
