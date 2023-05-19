import SwiftUI

struct CardBackView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
            RoundedRectangle(cornerRadius: 24)
                .fill(Color("CardBackgroundColor"))
                .frame(width: 343, height: 463)
                .shadow(color: Color("CardShadowColor"), radius: 17, x: 0, y: 4)
                .overlay(
                    VStack(spacing: 0){
                        Spacer()
                        
                        Text("한눈에 보는 출석 규정")
                            .padding(.bottom, 6)
                            .font(.custom("SF-Pro", size: 20))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                            .padding(.bottom, 35)
                        
                
                        Image(colorScheme == .light ? "TimeRegulationLight" : "TimeRegulationDark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 164, height: 309)
                            .padding(.bottom, 64)
                    })
                .padding(.bottom, 30)

    }
}

struct CardBackView_Previews: PreviewProvider {
    static var previews: some View {
        CardBackView()
    }
}
