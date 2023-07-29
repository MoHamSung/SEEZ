import SwiftUI

struct Practice8: View {
    @State private var countdown: Int = 6
    @State private var showImage: Bool = false
    
    var body: some View {
        VStack {
            if countdown > 0 {
                HStack {
                    Text("안녕")
                        .font(.largeTitle)
                    Text("반가워")
                        .font(.largeTitle)
                }
                .padding()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        startCountdown()
                    }
                }
            } else if countdown >= 0 {
                Text("\(countdown)")
                    .font(.largeTitle)
                    .padding()
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                            countdown -= 1
                            if countdown < 0 {
                                showImage = true
                                timer.invalidate()
                            }
                        }
                    }
            }
            
            if showImage {
                Image("yourImageName")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .transition(.opacity)
                    .animation(.easeInOut(duration: 0.5))
            }
        }
    }
    
    func startCountdown() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            countdown -= 1
            if countdown == 0 {
                timer.invalidate()
            }
        }
    }
}




struct Practice8_Previews: PreviewProvider {
    static var previews: some View {
        Practice8()
    }
}
