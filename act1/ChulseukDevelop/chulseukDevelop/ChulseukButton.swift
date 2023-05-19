//
//  ChulseukButton.swift
//  chulseukDevelop
//
//  Created by seunghoria on 2023/05/08.
//

import SwiftUI

struct ChulseukButton: View {
    var body: some View {
        Button {
            print("출쓱하기")
        } label: {
            Text("출쓱하기")
                .font(.custom("SF-Pro", size: 20))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(Color("ColorButton"))
                .cornerRadius(50)
        }//.padding(.bottom, 50)
    }
}

struct ChulseukButton_Previews: PreviewProvider {
    static var previews: some View {
        ChulseukButton()
    }
}
