//
//  ImgAArea.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/28.
//

import SwiftUI

struct ImgAArea: View {
    var body: some View {
        Image("ImgA")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ImgAArea_Previews: PreviewProvider {
    static var previews: some View {
        ImgAArea()
    }
}
