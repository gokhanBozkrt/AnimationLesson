//
//  Implicit Animations.swift
//  Animations
//
//  Created by Gokhan Bozkurt on 25.04.2022.
//

import SwiftUI

struct Implicit_Animations: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
       //    animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
        Circle()
            .stroke(.red)
            .scaleEffect(animationAmount)
            .opacity(2 - animationAmount)
            .animation(
                .easeInOut(duration: 2)
                   // .delay(1)
                   // .repeatCount(3, autoreverses: true)
                    .repeatForever(autoreverses: true),
                    value: animationAmount
            
        )
        )
        .onAppear {
            animationAmount = 2
        }
    //    .scaleEffect(animationAmount)
      //  .blur(radius: (animationAmount - 1) * 3)
      //  .animation(.default, value: animationAmount)
       //.animation(.easeOut, value: animationAmount)
      //  .animation(.easeIn, value: animationAmount)
     //   .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
        
    }
}

struct Implicit_Animations_Previews: PreviewProvider {
    static var previews: some View {
        Implicit_Animations()
    }
}
