//
//  ImgDArea.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/28.
//

import SwiftUI

struct ImgDArea: View {
    @Binding var maltyMouthAreaHeight: CGFloat
    
    var body: some View {
        VStack(spacing:0){
            Image("ImgD")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .background(
                    GeometryReader { proxy -> Color in
                        DispatchQueue.main.async{
                            maltyMouthAreaHeight = proxy.size.height
                        }
                        return Color.clear
                    }
                )
            Image("ImgDd")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImgDArea_Previews: PreviewProvider {
    static var previews: some View {
        ImgDArea(maltyMouthAreaHeight: .constant(30))
    }
}
