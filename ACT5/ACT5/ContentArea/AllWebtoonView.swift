//
//  Practice77.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/19.
//

import SwiftUI

struct MondayContent: View {
    private var mondayWebtoon = webtoonProductModel.mondayWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<mondayWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < mondayWebtoon.count {
                            CodeImageView(imageTitle:mondayWebtoon[index].imageTitle, thumbnailTitle: mondayWebtoon[index].thumbnailTitle, authorNameRateScore: mondayWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}

struct TuesdayContent: View {
    private var tuesdayWebtoon = webtoonProductModel.tuesdayWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<tuesdayWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < tuesdayWebtoon.count {
                            CodeImageView(imageTitle: tuesdayWebtoon[index].imageTitle, thumbnailTitle: tuesdayWebtoon[index].thumbnailTitle, authorNameRateScore: tuesdayWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}

struct WednesdayContent: View {
    private var wednesdayWebtoon = webtoonProductModel.wednesdayWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<wednesdayWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < wednesdayWebtoon.count {
                            CodeImageView(imageTitle: wednesdayWebtoon[index].imageTitle, thumbnailTitle: wednesdayWebtoon[index].thumbnailTitle, authorNameRateScore: wednesdayWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}

struct ThursdayContent: View {
    private var thursdayWebtoon = webtoonProductModel.thursdayWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<thursdayWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < thursdayWebtoon.count {
                            CodeImageView(imageTitle: thursdayWebtoon[index].imageTitle, thumbnailTitle: thursdayWebtoon[index].thumbnailTitle, authorNameRateScore: thursdayWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}

struct FridayContent: View {
    private var fridayWebtoon = webtoonProductModel.fridayWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<fridayWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < fridayWebtoon.count {
                            CodeImageView(imageTitle: fridayWebtoon[index].imageTitle, thumbnailTitle: fridayWebtoon[index].thumbnailTitle, authorNameRateScore: fridayWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}

struct SaturdayContent: View {
    private var saturdayWebtoon = webtoonProductModel.saturdayWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<saturdayWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < saturdayWebtoon.count {
                            CodeImageView(imageTitle: saturdayWebtoon[index].imageTitle, thumbnailTitle: saturdayWebtoon[index].thumbnailTitle, authorNameRateScore: saturdayWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}

struct SundayContent: View {
    private var sundayWebtoon = webtoonProductModel.sundayWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<sundayWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < sundayWebtoon.count {
                            CodeImageView(imageTitle: sundayWebtoon[index].imageTitle, thumbnailTitle: sundayWebtoon[index].thumbnailTitle, authorNameRateScore: sundayWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}

struct NewContent: View {
    private var newWebtoon = webtoonProductModel.newWebtoon
    
    var body: some View {
        VStack {
            ForEach(0..<newWebtoon.count/3 + 1, id: \.self) { row in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { column in
                        let index = row * 3 + column
                        if index < newWebtoon.count {
                            CodeImageView(imageTitle: newWebtoon[index].imageTitle, thumbnailTitle: newWebtoon[index].thumbnailTitle, authorNameRateScore: newWebtoon[index].authorNameRateScore)
                                .padding(.trailing, 6)
                        }
                    }
                }
            }
        }
      
    }
}



struct CodeImageView: View {
    var imageTitle: String
    var thumbnailTitle: String
    var authorNameRateScore: String
    
    var body: some View {
        
        Button {
            print("웹툰 하나")
        } label: {
            VStack(alignment: .leading, spacing: 0){
                Image(imageTitle)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 5)
                Text(thumbnailTitle)
                    .customTextStyle(fontSize: 13, fontWeight: .semibold, fontColor: "FontBlack")
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .padding(.bottom, 4)
                Text(authorNameRateScore)
                    .customTextStyle(fontSize: 10, fontWeight: .medium, fontColor: "FontGray100")
            }
            .frame(width: UIScreen.main.bounds.width / 3.35)
//            .border(.red)
        }
    


    }
}




struct AllWebtoonView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
