//
//  AnimatingBindings.swift
//  Animations
//
//  Created by Gokhan Bozkurt on 27.04.2022.
//

import SwiftUI

struct AnimatingBindings: View {
    @State private var animationAmount = 1.0
    var body: some View {
        VStack {
            Stepper("Scale Amount", value: $animationAmount.animation(
                .easeOut(duration: 1)
                    .repeatCount(3, autoreverses: true)), in : 1...10)
            Spacer()
            
            Button("Top Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct AnimatingBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindings()
    }
}
