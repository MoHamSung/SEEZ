//
//  NavigationBarArea.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/04.
//

import SwiftUI



struct HeaderArea: View {
    private let dotAppearance = UIPageControl.appearance()
    @GestureState var offset: CGFloat = 0
    @State var currentIndex: Int = 0
    @State var currentBannerImage: String?
    
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
        
        GeometryReader{ proxy in
            let width = proxy.size.width - (32 - 10)
            let adjustMentWidth = (32 / 2) - 10
            let size = proxy.size
            let spacing : CGFloat = 10
            
            ZStack {
                ForEach(0..<swipeBanners.count, id: \.self) { index in
                    Image("ImgBanner0\(index + 1)")
                        .resizable()
                        .scaledToFit()
                        .opacity(index == currentIndex ? 1 : 0)
                }
        
                HStack(spacing: 10) {
                    ForEach(swipeBanners){swipeBanner in
                        Image(swipeBanner.lineBannerImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width - 32)
                            .shadow(color: Color.black.opacity(0.34), radius: 10, x: 0, y: 2)
                        //.padding(.leading, 16)
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 16)
            }
            .offset(x: (CGFloat(currentIndex) * -width) + offset)
            .gesture(
                DragGesture()
                    .updating($offset, body: { value, out, _ in
                        out = value.translation.width
                    })
                    .onEnded({ value in
                        let offsetX = value.translation.width
                        print(offsetX)
                        let progress = -offsetX / width
                        print(progress)
                        let roundIndex = progress.rounded()
                        
                        currentIndex = max(min(currentIndex + Int(roundIndex), swipeBanners.count - 1), 0)
                    })
            )
            .onAppear {
                currentBannerImage = swipeBanners[currentIndex].bannerImage
            }

        }
    }
}

struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
