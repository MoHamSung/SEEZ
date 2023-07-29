//
//  ViewModifier.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/18.
//

import SwiftUI

extension View {
    func extractButton(_ imageName: String) -> some View {
        Button(action: {
            
        }) {
            Image(imageName)
                .resizable()
                .scaledToFit()
        }
    }
}
