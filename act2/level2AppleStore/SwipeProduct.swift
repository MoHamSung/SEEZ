//
//  SwipeProduct.swift
//  level2AppleStore
//
//  Created by seunghoria on 2023/05/19.
//

import SwiftUI

struct SwipeProduct: View {
    @State var currentIndex: Int = 0
    @State var posts: [Post] = []
    var body: some View {
        ZStack{
            VStack (alignment: .leading, spacing: 0){
                Text("추천")
                    .foregroundColor(Color("ColorFontBlack"))
                    .font(.system(size: 30, weight: .semibold))
                SnapCarousel(index: $currentIndex, items: posts) {
                    post in
                    
                    GeometryReader{proxy in
                        
                        let size = proxy.size
                        
                        Image(post.postImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: size.width)
                        
                    }
            
                }
                
            }
            .frame(maxWidth: .infinity)
            .onAppear {
                for index in 1...3 {
                    posts.append(Post(postImage: "ImgSwipeProduct\(index)"))
                }
            }
        }
    }
}

struct SwipeProduct_Previews: PreviewProvider {
    static var previews: some View {
        SwipeProduct()
    }
}
