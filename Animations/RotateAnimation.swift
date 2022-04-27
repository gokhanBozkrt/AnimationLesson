//
//  RotateAnimation.swift
//  Animations
//
//  Created by Gokhan Bozkurt on 27.04.2022.
//

import SwiftUI

struct RotateAnimation: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0.4))
    }
}

struct RotateAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RotateAnimation()
    }
}
