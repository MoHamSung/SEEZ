//
//  Header.swift
//  chulseukDevelop
//
//  Created by seunghoria on 2023/05/08.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack (spacing: 0) {
            Image(systemName: "calendar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 27)
                .padding(.trailing, 16)
                .foregroundColor(Color("ColorIcon"))
            
            
            Image(systemName: "gearshape")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 27)
                .foregroundColor(Color("ColorIcon"))
                .padding(.trailing, 5)
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        //.frame(height: 51)
        .padding(.top, 12)
        .padding(.bottom, 32)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
