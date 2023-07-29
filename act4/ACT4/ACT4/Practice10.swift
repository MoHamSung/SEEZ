//
//  Practice10.swift
//  ACT4
//
//  Created by seunghoria on 2023/07/16.
//
import SwiftUI

struct Practice10: View {
    @State private var progress: CGFloat = 1.0
    @State private var countdownText: String = "3"
    @State private var countdown: Int = 3
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let countdownDuration: TimeInterval = 3
    
    var body: some View {
        if countdown > 0 {
            VStack {
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(lineWidth: 10)
                    .modifier(BubbleFontModifier())
                    .frame(width: 153, height: 153)
                    .rotationEffect(Angle(degrees: -90))
                    .animation(.easeInOut)
                    .onAppear {
                        startCountdown()
                    }
                    .overlay(
                        Text(countdownText)
                            .font(.system(size: 100))
                            .modifier(BubbleFontModifier())

                    )
                
            }
            .onReceive(timer) { _ in
                withAnimation {
                    if progress > 0 {
                        progress -= 1 / CGFloat(countdownDuration)
                        countdownText = "\(countdown)"
                    } else {
                        timer.upstream.connect().cancel()
                    }
                }
            }
        } else {
            Text("Go!")
                .font(.system(size: 100))
                .modifier(BubbleFontModifier())
                
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




struct Practice10_Previews: PreviewProvider {
    static var previews: some View {
        Practice10()
    }
}
