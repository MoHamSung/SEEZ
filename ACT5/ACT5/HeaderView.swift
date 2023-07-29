//
//  HeaderView.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/04.
//


import SwiftUI

struct HeaderView: View {
    // MARK: Properties
    @GestureState var offset:CGFloat = 0
    @State private var currentIndex = 0
    
    private let trailingPadding:CGFloat = 8
    private let totalPadding:CGFloat = 32
    
    var swipeBanners = [
        SwipeBannerModel(index: 1, bannerImage: "ImgBanner01", lineBannerImage: "ImgLineBanner01"),
        SwipeBannerModel(index: 2, bannerImage: "ImgBanner02", lineBannerImage: "ImgLineBanner02"),
        SwipeBannerModel(index: 3, bannerImage: "ImgBanner03", lineBannerImage: "ImgLineBanner03"),
        SwipeBannerModel(index: 4, bannerImage: "ImgBanner04", lineBannerImage: "ImgLineBanner04"),
        SwipeBannerModel(index: 5, bannerImage: "ImgBanner05", lineBannerImage: "ImgLineBanner05"),
        SwipeBannerModel(index: 6, bannerImage: "ImgBanner06", lineBannerImage: "ImgLineBanner06"),
        SwipeBannerModel(index: 7, bannerImage: "ImgBanner07", lineBannerImage: "ImgLineBanner07"),
        SwipeBannerModel(index: 8, bannerImage: "ImgBanner08", lineBannerImage: "ImgLineBanner08")
    ]
    
    var body: some View {
        let imageWidth = UIScreen.main.bounds.width
        let imageHeight = UIScreen.main.bounds.height
        GeometryReader { geo in
            
            let width = geo.size.width - (totalPadding - trailingPadding)
            
            Group{
                ForEach(0..<swipeBanners.count,id: \.self) { index in
                    Image("ImgBanner0\(index + 1)")
                        .resizable()
                        .scaledToFit()
                        .opacity(index == currentIndex ? 1 : 0)
                }
                
                HStack(spacing: trailingPadding) {
                    ForEach(swipeBanners) { swipeBanner in
                        Image(swipeBanner.lineBannerImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geo.size.width - totalPadding)
                            .offset(x: (CGFloat(currentIndex) * -width) + offset,y: imageHeight/4.1)
                    }
                    .animation(.easeInOut,value: offset == 0)
                }
                .padding(.horizontal,16)
            }
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        out = value.translation.width
                    })
                    .onEnded({ value in
                        let offsetX = value.translation.width
                        let swipe = -offsetX/width
                        let roundIndex = swipe.rounded()
                        
                        withAnimation(.linear){
                            currentIndex = max(min(currentIndex + Int(roundIndex), swipeBanners.count - 1),0)
                        }
                    })
            )
        }
        .frame(width: imageWidth, height: imageHeight/3.4)
        //imageHeight/3.4
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

