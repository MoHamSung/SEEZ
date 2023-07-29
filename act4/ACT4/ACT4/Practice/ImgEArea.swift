//
//  ImgEArea.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/28.
//

import SwiftUI

struct ImgEArea: View {
    var body: some View {
        Image("ImgE")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct ImgEArea_Previews: PreviewProvider {
    static var previews: some View {
        ImgEArea()
    }
}
