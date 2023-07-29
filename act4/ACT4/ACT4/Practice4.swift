//
//  Practice4.swift
//  ACT4
//
//  Created by seunghoria on 2023/07/15.
//

import SwiftUI

struct Practice4: View {
    @State var timeRemaining = 3
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: 100))
            .fontWeight(.black)
            .fontDesign(.rounded)
            .foregroundStyle(
                .shadow(.inner(color: .pink.opacity(0.5), radius: 4, x: 2, y: 2))
                .shadow(.inner(color: .blue, radius: 4, x: -2, y: 0))
                .shadow(.inner(color: .yellow.opacity(0.5), radius: 4, x: 1.5, y: -2))
                .shadow(.inner(color: .white.opacity(0.5), radius: 4, x: 0, y: 2))
            )
            .onReceive(timer) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                }
            }
    }
}

struct Practice4_Previews: PreviewProvider {
    static var previews: some View {
        Practice4()
    }
}
