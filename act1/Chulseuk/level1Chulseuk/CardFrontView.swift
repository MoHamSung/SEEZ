import SwiftUI

struct CardFrontView: View {
    var body: some View {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color("CardBackgroundColor"))
                .frame(width: 343, height: 463)
                .shadow(color: Color("CardShadowColor"), radius: 17, x: 0, y: 4)
                .overlay(
                    VStack(spacing: 0){
                        Spacer()
                        
                        Image("chulseukIcon")
                            .resizable()
                            .frame(width: 152, height: 226)
                            .padding(.bottom, 42)
                        
                        Group{
                            Text("오늘은 아카데미 휴일")
                                .padding(.bottom, 6)
                            
                            Text("푹 쉬고 다음에 만나요.")
                                .padding(.bottom, 16)
                        }.font(.custom("SF-Pro", size: 20))
                            
                        
                        Text("출석 규정 보러가기\(.init(systemName: "chevron.right"))")
                                .font(.custom("SF-Pro", size: 13))
                                .foregroundColor(Color("fontPurple"))
                                .padding(.bottom, 30)
                    })
                .padding(.bottom, 30)
    }
}



struct CardFrontView_Previews: PreviewProvider {
    static var previews: some View {
        CardFrontView()
    }
}




