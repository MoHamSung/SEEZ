//
//  Practice2.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/17.
//

import SwiftUI

struct Practice2: View {
    var body: some View {
        TabView {
            Text("First")
            Text("Second")
            Text("Third")
            Text("Fourth")
        }
        .border(.red)
        .tabViewStyle(PageTabViewStyle())
        .onAppear {
            setupAppearance()
        }
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
}

struct Practice2_Previews: PreviewProvider {
    static var previews: some View {
        Practice2()
    }
}
