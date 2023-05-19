//
//  practice.swift
//  chulseukDevelop
//
//  Created by seunghoria on 2023/05/09.
//

import SwiftUI

struct practice: View {
    @State private var isFlipped = false
    @State private var degrees = 0.0
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
                .rotation3DEffect(.degrees(!isFlipped ? 0 : 90), axis: (x: 0, y: 1, z: 0))
            
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
                .rotation3DEffect(.degrees(!isFlipped ? 90 : 180), axis: (x: 0, y: 1, z: 0))
            
            
                .onTapGesture {
                    withAnimation {
                        isFlipped.toggle()
                    }
                }
            
//            Rectangle()
//                .frame(width: 300, height: 300)
//                .foregroundColor(.blue)
//                .rotation3DEffect(.degrees(!isFlipped ? 90 : 0), axis: (x: 0, y: 1, z: 0))
            
            
//            if !isFlipped {
//                Rectangle()
//                    .frame(width: 300, height: 300)
//                    .foregroundColor(.red)
//                    .rotation3DEffect(.degrees(!isFlipped ? 0 : -90), axis: (x: 0, y: 1, z: 0))
//
//                Rectangle()
//                    .frame(width: 300, height: 300)
//                    .foregroundColor(.blue)
//                    .rotation3DEffect(.degrees(90), axis: (x: 0, y: 1, z: 0))
//            } else {
//                Rectangle()
//                    .frame(width: 300, height: 300)
//                    .foregroundColor(.red)
//                    .rotation3DEffect(.degrees(!isFlipped ? 0 : -90), axis: (x: 0, y: 1, z: 0))
//
//                Rectangle()
//                    .frame(width: 300, height: 300)
//                    .foregroundColor(.blue)
//                    .rotation3DEffect(.degrees(90), axis: (x: 0, y: 1, z: 0))
//            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.5)) {
                self.isFlipped.toggle()
            }
        }
    }
}

struct practice_Previews: PreviewProvider {
    static var previews: some View {
        practice()
    }
}
