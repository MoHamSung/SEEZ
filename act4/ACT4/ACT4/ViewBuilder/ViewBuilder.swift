//
//  ViewBuilder.swift
//  ACT4
//
//  Created by seunghoria on 2023/06/25.
//

import SwiftUI

@ViewBuilder

func imageLayout<Content: View>(imageTitle: String, overlayAlignment: Alignment, leadingOffset: Double, topOffset : Double, @ViewBuilder content: () -> Content) -> some View {
    VStack {
        Image(imageTitle)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .overlay(alignment: overlayAlignment) {
                VStack(spacing: 4) {
                    content()
                }
                .offset(x: leadingOffset, y: topOffset)
            }
    }
}
