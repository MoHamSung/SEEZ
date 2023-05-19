//
//  practice4.swift
//  chulseukDevelop
//
//  Created by seunghoria on 2023/05/09.
//

import SwiftUI

struct FlipCard: View {
    var body: some View {
        FlashCard {
            CardFront()
        } back: {
            CardBack()
        }

    }
}

struct FlashCard<Front, Back>: View where Front: View, Back: View {
    var front: () -> Front
    var back: () -> Back
    
    @State var flipped: Bool = false
    
    @State var flashCardRotation = 0.0
    @State var contentRotation = 0.0
    
    init(@ViewBuilder front: @escaping () -> Front, @ViewBuilder back: @escaping () -> Back) {
        self.front = front
        self.back = back
    }
    
    var body: some View {
        ZStack{
            if flipped {
                back()
            } else {
                front()
            }
        }
        .rotation3DEffect(.degrees(contentRotation), axis: (x: 0, y: 1, z: 0), perspective: 0.2)
        .onTapGesture {
            flipFlashCard()
        }
        .rotation3DEffect(.degrees(flashCardRotation), axis: (x: 0, y: 1, z: 0), perspective: 0.2)
    }
    
    func flipFlashCard() {
        let animationTime = 0.5
        withAnimation(Animation.linear(duration: animationTime)) {
            flashCardRotation += 180
        }
        
        withAnimation(Animation.linear(duration: 0.07).delay(animationTime / 2)) {
            contentRotation += 180
            flipped.toggle()
        }
    }
}

struct FlipCard_Previews: PreviewProvider {
    static var previews: some View {
        FlipCard()
    }
}
