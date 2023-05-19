//
//  PriceArea.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/19.
//

import SwiftUI

struct PriceArea: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color("ColorPriceBox"))
            .frame(maxWidth: .infinity)
            .frame(height: 67)
            .overlay {
                HStack(spacing: 0) {
                    Text("₩1,250,000부터")
                        .font(.system(size: 10))
                        .padding(.trailing, 214)
                    
                    Button {
                        print("구입하기 좋겠다")
                    } label: {
                        Text("구입하기")
                            .foregroundColor(Color("ColorFontBuyBlue"))
                            .font(.system(size: 13, weight: .semibold))
                            .padding(.horizontal, 16)
                            .padding(.vertical, 6)
                            .background(Color("ColorBtnBuy"))
                            .cornerRadius(17)
                    }

                }
            }
            
    }
}

struct PriceArea_Previews: PreviewProvider {
    static var previews: some View {
        PriceArea()
    }
}
