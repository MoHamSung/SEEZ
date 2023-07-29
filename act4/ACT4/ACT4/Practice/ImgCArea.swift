//
//  ImgCArea.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/28.
//

import SwiftUI

struct ImgCArea: View {
    var body: some View {
        Image("ImgC")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ImgCArea_Previews: PreviewProvider {
    static var previews: some View {
        ImgCArea()
    }
}
