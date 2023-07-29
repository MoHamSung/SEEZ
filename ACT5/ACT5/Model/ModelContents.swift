//
//  ModelContents.swift
//  ACT5
//
//  Created by seunghoria on 2023/07/07.
//

import SwiftUI

struct SwipeBannerModel: Identifiable {
    var id = UUID()
    var index : Int
    var bannerImage: String
    var lineBannerImage: String
}

struct webtoonProductModel: Identifiable, Hashable {
    var id = UUID()
    var index : Int
    var thumbnailTitle: String
    var authorNameRateScore: String
    var imageTitle: String
}

extension webtoonProductModel {
    static let mondayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "그냥 선생님", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon01"),
        webtoonProductModel(index: 2, thumbnailTitle: "멸망급 ADA의 선생님", authorNameRateScore: "엠케이  ★9.99", imageTitle: "ImgContentMon02"),
        webtoonProductModel(index: 3, thumbnailTitle: "엠케이가 간다!", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon03"),
        webtoonProductModel(index: 4, thumbnailTitle: "아이들의 엠선생님", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon04"),
        webtoonProductModel(index: 5, thumbnailTitle: "엠케이의 교실", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon05"),
        webtoonProductModel(index: 6, thumbnailTitle: "공부의 결과", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon06"),
        webtoonProductModel(index: 7, thumbnailTitle: "공부를 뇌에서 뽑으면", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon07"),
        webtoonProductModel(index: 8, thumbnailTitle: "공부하기 좋은 날", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon08"),
        webtoonProductModel(index: 9, thumbnailTitle: "초월자 학원의 수강생이 되었다.", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon09"),
        webtoonProductModel(index: 10, thumbnailTitle: "애플까지 걸어서 1분", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon10"),
        webtoonProductModel(index: 11, thumbnailTitle: "스터디 그룹", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon11"),
        webtoonProductModel(index: 12, thumbnailTitle: "지금 우리 학교는", authorNameRateScore: "엠케이 ★9.99", imageTitle: "ImgContentMon12")
    ]
    
    static let tuesdayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "놓았다! 정신줄!", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue01"),
        webtoonProductModel(index: 2, thumbnailTitle: "외모지하주의", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue02"),
        webtoonProductModel(index: 3, thumbnailTitle: "하남자", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue03"),
        webtoonProductModel(index: 4, thumbnailTitle: "광마회귀", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue04"),
        webtoonProductModel(index: 5, thumbnailTitle: "절대복종", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue05"),
        webtoonProductModel(index: 6, thumbnailTitle: "나혼자 쪼렙", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue06"),
        webtoonProductModel(index: 7, thumbnailTitle: "개(를) 빻았다", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue07"),
        webtoonProductModel(index: 8, thumbnailTitle: "선을 넘은 김래원", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue08"),
        webtoonProductModel(index: 9, thumbnailTitle: "이십팔세기", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue09"),
        webtoonProductModel(index: 10, thumbnailTitle: "아카데미 탈출일지", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue10"),
        webtoonProductModel(index: 11, thumbnailTitle: "유쾌한 왕따", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue11"),
        webtoonProductModel(index: 12, thumbnailTitle: "세기말 풋사과 보습학원", authorNameRateScore: "김래원 ★9.78", imageTitle: "ImgContentTue12")
    ]
    
    static let wednesdayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "근육귀환", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed01"),
        webtoonProductModel(index: 2, thumbnailTitle: "성스러운 헬창생활", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed02"),
        webtoonProductModel(index: 3, thumbnailTitle: "하전지적 채드기준", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed03"),
        webtoonProductModel(index: 4, thumbnailTitle: "근육연애", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed04"),
        webtoonProductModel(index: 5, thumbnailTitle: "내가 키운 근육들", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed05"),
        webtoonProductModel(index: 6, thumbnailTitle: "근육을 훔친이는 누구인가", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed06"),
        webtoonProductModel(index: 7, thumbnailTitle: "백세트", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed07"),
        webtoonProductModel(index: 8, thumbnailTitle: "내가 운동을 결심한 것은", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed08"),
        webtoonProductModel(index: 9, thumbnailTitle: "맞짱깔래?", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed09"),
        webtoonProductModel(index: 10, thumbnailTitle: "아카데미 탈출일지", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed10"),
        webtoonProductModel(index: 11, thumbnailTitle: "66666년 만에 환생한 흑마법사", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed11"),
        webtoonProductModel(index: 12, thumbnailTitle: "헬창2", authorNameRateScore: "머슬러닝 ★9.78", imageTitle: "ImgContentWed12")
    ]
    
    static let thursdayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "근육귀환", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu01"),
        webtoonProductModel(index: 2, thumbnailTitle: "성스러운 헬창생활", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu02"),
        webtoonProductModel(index: 3, thumbnailTitle: "하전지적 채드기준", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu03"),
        webtoonProductModel(index: 4, thumbnailTitle: "근육연애", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu04"),
        webtoonProductModel(index: 5, thumbnailTitle: "내가 키운 근육들", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu05"),
        webtoonProductModel(index: 6, thumbnailTitle: "근육을 훔친이는 누구인가", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu06"),
        webtoonProductModel(index: 7, thumbnailTitle: "백세트", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentWed07"),
        webtoonProductModel(index: 8, thumbnailTitle: "내가 운동을 결심한 것은", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu08"),
        webtoonProductModel(index: 9, thumbnailTitle: "맞짱깔래?", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu09"),
        webtoonProductModel(index: 10, thumbnailTitle: "아카데미 탈출일지", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu10"),
        webtoonProductModel(index: 11, thumbnailTitle: "66666년 만에 환생한 흑마법사", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu11"),
        webtoonProductModel(index: 12, thumbnailTitle: "헬창2", authorNameRateScore: "김시즈 ★9.83", imageTitle: "ImgContentThu12")
    ]
    
    static let fridayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "버림받은 왕녀의 은밀한 침실", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri01"),
        webtoonProductModel(index: 2, thumbnailTitle: "제이의 세계", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri02"),
        webtoonProductModel(index: 3, thumbnailTitle: "백수세끼", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri03"),
        webtoonProductModel(index: 4, thumbnailTitle: "뷰티풀 군바리", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri04"),
        webtoonProductModel(index: 5, thumbnailTitle: "알고지상주의", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri05"),
        webtoonProductModel(index: 6, thumbnailTitle: "물어보는 사이", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri06"),
        webtoonProductModel(index: 7, thumbnailTitle: "개발신의탑", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri07"),
        webtoonProductModel(index: 8, thumbnailTitle: "똑닮은딸", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri08"),
        webtoonProductModel(index: 9, thumbnailTitle: "윈드 브레이커", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri09"),
        webtoonProductModel(index: 10, thumbnailTitle: "장씨세가 호위무사", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri10"),
        webtoonProductModel(index: 11, thumbnailTitle: "순정말고 순종", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri11"),
        webtoonProductModel(index: 12, thumbnailTitle: "신화급 귀속 아이템을 손에 넣었다", authorNameRateScore: "꽃사슴보이 ★9.99", imageTitle: "ImgContentFri12")
    ]
    
    static let saturdayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "잪집에는 로꼬 살고있다", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat01"),
        webtoonProductModel(index: 2, thumbnailTitle: "알고 일기", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat02"),
        webtoonProductModel(index: 3, thumbnailTitle: "페페를 죽여줘요", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat03"),
        webtoonProductModel(index: 4, thumbnailTitle: "알고머신", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat04"),
        webtoonProductModel(index: 5, thumbnailTitle: "촉법소년", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat05"),
        webtoonProductModel(index: 6, thumbnailTitle: "재벌집 막내아들", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat06"),
        webtoonProductModel(index: 7, thumbnailTitle: "수학을 삼킨 너에게", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat07"),
        webtoonProductModel(index: 8, thumbnailTitle: "뮤즈 온 유명", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat08"),
        webtoonProductModel(index: 9, thumbnailTitle: "코딩 테스트", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat09"),
        webtoonProductModel(index: 10, thumbnailTitle: "가족같은 XX", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat10"),
        webtoonProductModel(index: 11, thumbnailTitle: "순수한 동거생활", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat11"),
        webtoonProductModel(index: 12, thumbnailTitle: "나 혼자 네크로맨서", authorNameRateScore: "로꼬 ★9.78", imageTitle: "ImgContentSat12")
    ]
    
    static let sundayWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "김다빈형님", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun01"),
        webtoonProductModel(index: 2, thumbnailTitle: "숙제 안해오면 몽둥이", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun02"),
        webtoonProductModel(index: 3, thumbnailTitle: "김다빈, 전설이 되다", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun03"),
        webtoonProductModel(index: 4, thumbnailTitle: "나랑 Xcode 할래?", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun04"),
        webtoonProductModel(index: 5, thumbnailTitle: "세레나", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun05"),
        webtoonProductModel(index: 6, thumbnailTitle: "프리드로우", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun06"),
        webtoonProductModel(index: 7, thumbnailTitle: "흑화한 김다빈는 무섭다", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun07"),
        webtoonProductModel(index: 8, thumbnailTitle: "망나니 소교주로 환생했다", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun08"),
        webtoonProductModel(index: 9, thumbnailTitle: "작전명 순정", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun09"),
        webtoonProductModel(index: 10, thumbnailTitle: "마도 전생기", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun10"),
        webtoonProductModel(index: 11, thumbnailTitle: "대충 해도 코딩잘함", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun11"),
        webtoonProductModel(index: 12, thumbnailTitle: "나를 바꿔줘", authorNameRateScore: "김다빈 ★9.88", imageTitle: "ImgContentSun12")
    ]
    
    static let newWebtoon  = [
        webtoonProductModel(index: 1, thumbnailTitle: "신혼일기", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew01"),
        webtoonProductModel(index: 2, thumbnailTitle: "싸움못함", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew02"),
        webtoonProductModel(index: 3, thumbnailTitle: "퇴학용병", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew03"),
        webtoonProductModel(index: 4, thumbnailTitle: "약한하명관", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew04"),
        webtoonProductModel(index: 5, thumbnailTitle: "투신 잔챙이", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew05"),
        webtoonProductModel(index: 6, thumbnailTitle: "사형하명관", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew06"),
        webtoonProductModel(index: 7, thumbnailTitle: "일타강사 하사부", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew07"),
        webtoonProductModel(index: 8, thumbnailTitle: "소녀재판", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew08"),
        webtoonProductModel(index: 9, thumbnailTitle: "치매전쟁", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew09"),
        webtoonProductModel(index: 10, thumbnailTitle: "무직백수 하 명 관", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew10"),
        webtoonProductModel(index: 11, thumbnailTitle: "사랑받는 시집살이", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew11"),
        webtoonProductModel(index: 12, thumbnailTitle: "고백 받을 수 있긴 하나?", authorNameRateScore: "하명관 ★9.78", imageTitle: "ImgContentNew12")
    ]
    
}
