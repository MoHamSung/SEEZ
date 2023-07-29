//
//  ImgBArea.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/28.
//

import SwiftUI

struct ImgBArea: View {
    var body: some View {
        Image("ImgB")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ImgBArea_Previews: PreviewProvider {
    static var previews: some View {
        ImgBArea()
    }
}
