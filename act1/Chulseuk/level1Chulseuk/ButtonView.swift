import SwiftUI

struct ButtonView: View {
    var body: some View {
            Button(action: {
                print("Hello 출쓱하기 버튼이요")
            }) {
                Text("출쓱하기")
                    .font(.custom("SF-Pro", size: 20))
                    .foregroundColor(Color("fontWhite"))
                    .padding(EdgeInsets(top: 38, leading: 135, bottom: 38, trailing: 135))
                    .background(Color("ButtonColor"))
                    .cornerRadius(50)
            }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
