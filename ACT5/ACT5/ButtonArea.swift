//
//  FooterArea.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/04.
//

import SwiftUI

struct ButtonArea: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 56)
            .foregroundColor(Color("BgWhite100"))
            .overlay(
                HStack(spacing: 3){
                    Text("\(Image(systemName: "questionmark.circle.fill"))")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color("FontGreen"))
                    
                    Text("랜덤 작품")
                        .font(.system(size: 16, weight: .bold))
                    Text("보러가기")
                        .font(.system(size: 16, weight: .regular))
                }
            )
//            .border(.red)
    }
}

struct ButtonArea_Previews: PreviewProvider {
    static var previews: some View {
        ButtonArea()
    }
}
