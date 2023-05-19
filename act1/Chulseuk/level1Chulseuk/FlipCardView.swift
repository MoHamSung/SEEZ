//
//  MainCardView.swift
//  level1Chulseuk
//
//  Created by seunghoria on 2023/04/30.
//

import SwiftUI

struct FlipCardView: View {
    @State private var flipped = false
    @State private var animated3d = false
    
    var body: some View {
        VStack{
            ZStack() {
                CardFrontView().opacity(flipped ? 1.0 : 0.0)
                CardBackView().opacity(flipped ? 0.0 : 1.0)
            }
            .modifier(FlipEffect(flipped: $flipped, axis: (x: 0, y: 1), angle: animated3d ? 0 : 180))
            .onTapGesture {
                withAnimation(Animation.linear(duration: 0.5)){
                    self.animated3d.toggle()
                }
            }
        }
    }
}

struct FlipEffect: GeometryEffect {
    @Binding var flipped: Bool
    
    let axis: (x: CGFloat, y: CGFloat)
    var angle: Double
    
    var animatableData: Double {
        get{
            angle
        }
        set {
            angle = newValue
        }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        DispatchQueue.main.async {
            self.flipped = self.angle > 90 && self.angle < 270
        }
        let tweakAngle = flipped ? -180 + angle : angle
        let a = CGFloat(Angle(degrees: tweakAngle).radians)
        
        var transform3d = CATransform3DIdentity
        transform3d.m34 = -1/max(size.width, size.height)
        
        transform3d = CATransform3DRotate(transform3d, a, axis.x, axis.y, 0)
        transform3d = CATransform3DTranslate(transform3d, -size.width/2.0, -size.height/2.0, 0)
        
        let affineTransform = ProjectionTransform(CGAffineTransform(translationX: size.width / 2.0, y: size.height / 2.0))
        return ProjectionTransform(transform3d).concatenating(affineTransform)
    }
}


struct FlipCardView_Previews: PreviewProvider {
    static var previews: some View {
        FlipCardView()
    }
}
