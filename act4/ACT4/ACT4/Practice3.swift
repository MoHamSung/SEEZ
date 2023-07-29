//import SwiftUI
//import Combine
//
//struct Practice3: View {
//    @State var showFab = true
//    @State var scrollOffset: CGFloat = 0.00
//
//    var body: some View {
//        ScrollView {
//            VStack (alignment: .leading) {
//                ForEach(0..<30) { i in
//                    HStack {
//                        Text("Item \(i)").padding()
//                        Spacer()
//                    }
//                }
//            }.background(GeometryReader {
//                return Color.clear.preference(key: ViewOffsetKey.self,
//                                       value: -$0.frame(in: .named("scroll")).origin.y)
//            })
//            .onPreferenceChange(ViewOffsetKey.self) { offset in
//                print(offset)
//                withAnimation {
//                    if offset > 100 {
//                        showFab = false
//                    } else  {
//                        showFab = true
//                    }
//                }
//                scrollOffset = offset
//            }
//        }
//        .coordinateSpace(name: "scroll")
//        .overlay(
//            showFab ?
//                createFab()
//                : nil
//            , alignment: Alignment.bottomTrailing)
//    }
//
//    fileprivate func createFab() -> some View {
//        return
//            Rectangle()
//                .frame(maxWidth: .infinity)
//                .frame(height: 68)
//                .foregroundColor(Color("ColorBtnFloating"))
//                .cornerRadius(16)
//                .padding(.horizontal, 19)
//                .overlay(
//                    HStack{
//                        Text("₩1,250,000부터")
//                            .foregroundColor(Color("ColorFontBlack"))
//                            .padding(.trailing, 158)
//                            .font(.system(size: 10, weight: .regular))
//                        
//                        Button {
//                        } label: {
//                            Text("구입하기")
//                                .font(.system(size: 13, weight: .regular))
//                                .padding(.horizontal, 20)
//                                .padding(.vertical, 6)
//                                .background(Color("ColorBtnPurchase"))
//                                .cornerRadius(17)
//                        }
//
//                    }
//                )
//        .padding(.bottom, 70)
//        .transition(.move(edge: .bottom))
//    }
//}
//
//
//struct Practice3_Previews: PreviewProvider {
//    static var previews: some View {
//        Practice3()
//    }
//}
