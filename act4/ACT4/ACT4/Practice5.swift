//
//  Practice5.swift
//  ACT4
//
//  Created by seunghoria on 2023/07/15.
//

import SwiftUI

import SwiftUI

import SwiftUI

struct Practice5: View {
    @State private var greetingText = "안녕"
    
    var body: some View {
        VStack {
            Text(greetingText)
                .font(.largeTitle)
                .padding()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        Practice6(timeRemaining: 3)
                    }
                }
        }
    }
}

struct Practice6: View {
    @State var timeRemaining = 3
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text("\(timeRemaining)")
            .onReceive(timer) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                }
            }
    }
}




struct Practice5_Previews: PreviewProvider {
    static var previews: some View {
        Practice5()
    }
}
