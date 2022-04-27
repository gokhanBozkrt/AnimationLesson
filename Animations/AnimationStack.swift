//
//  AnimationStack.swift
//  Animations
//
//  Created by Gokhan Bozkurt on 27.04.2022.
//

import SwiftUI

struct AnimationStack: View {
    @State private var enabled = false
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
       
        // after animation it happens modifier order is important
        

        
    }
}

struct AnimationStack_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStack()
    }
}
