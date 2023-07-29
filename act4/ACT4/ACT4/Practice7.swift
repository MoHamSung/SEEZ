//
//  Practice6.swift
//  ACT4
//
//  Created by seunghoria on 2023/07/16.
//

import SwiftUI


struct Practice7: View {
    @State private var countdown: Int = 3
    
    var body: some View {
        VStack {
            if countdown > 0 {
                Text("\(countdown)")
                    .font(.largeTitle)
                    .padding()
                    .onAppear {
                        startCountdown()
                    }
            } else {
                Image("Group176")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
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




struct Practice7_Previews: PreviewProvider {
    static var previews: some View {
        Practice7()
    }
}
