//
//  HeaderView.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        VStack {
            HStack(spacing: 0){
                Text("쇼핑하기")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(Color("ColorFontBlack"))
                    .padding(.top, 54)
                    .padding(.trailing, 205)
                    
                
                Image("ImgLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 37)
                    .padding(.top, 48)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 10)
            
            Divider()
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
