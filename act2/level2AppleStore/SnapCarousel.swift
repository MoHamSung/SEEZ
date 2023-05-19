//
//  SnapCarousel.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/19.
//

import SwiftUI

struct SnapCarousel<Content: View, T: Identifiable>: View {
    var content: (T) -> Content
    var list: [T]
    
    var spacing: CGFloat
    var trailingSpace: CGFloat
    @Binding var index: Int
    
    init(spacing: CGFloat = 15, trailingSpace: CGFloat = 100, index: Binding<Int>, items: [T], @ViewBuilder content: @escaping (T) -> Content) {
        
        self.list = items
        self.spacing = spacing
        self.trailingSpace = trailingSpace
        self._index = index
        self.content = content
    }
    
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    
    var body: some View{
        GeometryReader{proxy in
            
            let width = proxy.size.width
            
            HStack(spacing: spacing) {
                ForEach(list){item in
                    content(item)
                        .frame(width: proxy.size.width - trailingSpace)
                    
                }
            }
            .padding(.horizontal, spacing)
            .offset(x: (CGFloat(currentIndex) * -width) + offset)
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        out = value.translation.width
                        
                    })
                    .onEnded({ value in
                        let offsetX = value.translation.width
                        
                        let progress = -offsetX / width
                        
                        let roundIndex = progress.rounded()
                        
                        currentIndex = max(min(currentIndex + Int(roundIndex), list.count - 2), 0)
                    })
            )
        }
        .animation(.easeInOut, value: offset == 0)
    }
}

struct SnapCarousel_Previews: PreviewProvider {
    static var previews: some View {
        SwipeProduct()
    }
}
