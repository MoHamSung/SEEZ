//
//  PurchaseButton.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/26.
//

import SwiftUI

struct BottomButton: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 68)
            .background(.thinMaterial)
            .cornerRadius(16)
            .overlay(
                HStack{
                    Text("₩1,250,000부터")
                        .foregroundColor(Color("ColorFontBlack"))
                        .padding(.trailing, 158)
                        .font(.system(size: 10, weight: .regular))
                    
                    Button {
                        print("구입하기")
                    } label: {
                        Text("구입하기")
                            .font(.system(size: 13, weight: .regular))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 6)
                            .background(.thinMaterial)
                            .cornerRadius(17)
                    }
                    
                }
            )
    }
}

struct BottomButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomButton()
    }
}
