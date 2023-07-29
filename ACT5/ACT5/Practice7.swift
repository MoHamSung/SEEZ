//
//  Practice7.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/19.
//

import SwiftUI

struct ContentView: View {
    // 예시로 사용할 코드 배열
    let codes = ["Code1", "Code2", "Code3", "Code4", "Code5", "Code6", "Code7", "Code8", "Code9", "Code10", "Code11", "Code12"]
    
    let mondayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "그냥 선생님", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon01"),
        webtoonProductModel(index: 2, thumbnailTitle: "멸망급 ADA의 선생님", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon02"),
        webtoonProductModel(index: 3, thumbnailTitle: "엠케이가 간다!", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon03"),
        webtoonProductModel(index: 4, thumbnailTitle: "아이들의 엠선생님", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon04"),
        webtoonProductModel(index: 5, thumbnailTitle: "엠케이의 교실", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon05"),
        webtoonProductModel(index: 6, thumbnailTitle: "공부의 결과", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon06"),
        webtoonProductModel(index: 7, thumbnailTitle: "공부를 뇌에서 뽑으면", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon07"),
        webtoonProductModel(index: 8, thumbnailTitle: "공부하기 좋은 날", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon08"),
        webtoonProductModel(index: 9, thumbnailTitle: "초월자 학원의 수강생이 되었다.", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon09"),
        webtoonProductModel(index: 10, thumbnailTitle: "애플까지 걸어서 1분", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon10"),
        webtoonProductModel(index: 11, thumbnailTitle: "스터디 그룹", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon11"),
        webtoonProductModel(index: 12, thumbnailTitle: "지금 우리 학교는", authorNameRateScore: "엠케이★9.99", imageTitle: "ImgContentMon12")
    ]
    
    var body: some View {
        VStack {
            ForEach(0..<mondayWebtoon.count/3, id: \.self) { row in
                HStack {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < self.mondayWebtoon.count {
                            CodeView(code: self.mondayWebtoon.imageTitle)
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct CodeView: View {
    let code: String
    
    var body: some View {
        Image(code)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .border(Color.black, width: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

