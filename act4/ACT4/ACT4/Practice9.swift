//
//  Practice9.swift
//  ACT4
//
//  Created by seunghoria on 2023/07/16.
//

import SwiftUI

struct Practice9: View {
    @State private var progress: CGFloat = 1.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let countdownDuration: TimeInterval = 3

    var body: some View {
        VStack {
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.blue, lineWidth: 10)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: -90))
                .overlay(
                    Text("\(Int(countdownDuration - progress * countdownDuration))")
                        .font(.largeTitle)
                        .padding()
                )

            

        }
        .onReceive(timer) { _ in
            withAnimation {
                if progress > 0 {
                    progress -= 1 / CGFloat(countdownDuration)
                } else {
                    timer.upstream.connect().cancel()
                }
            }
        }
    }
}



struct Practice9_Previews: PreviewProvider {
    static var previews: some View {
        Practice9()
    }
}
