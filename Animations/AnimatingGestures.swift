//
//  AnimatingGestures.swift
//  Animations
//
//  Created by Gokhan Bozkurt on 27.04.2022.
//

import SwiftUI

struct AnimatingGestures: View {
   let letter = Array("Hello, Mate")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        
        
        HStack(spacing:0) {
            ForEach(0..<letter.count, id: \.self) { num in
                Text(String(letter[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num) / 20), value: dragAmount)
                
            }
            
        }
        .gesture(
        DragGesture()
            .onChanged{ dragAmount = $0.translation}
            .onEnded { _ in
                dragAmount = .zero
                enabled.toggle()}
        )
        
        
        
        
        
        
 /*
  LinearGradient(colors: [.yellow,.red], startPoint: .topLeading, endPoint: .bottomTrailing)
      .frame(width: 300, height: 200)
      .clipShape(RoundedRectangle(cornerRadius: 10))
      .offset(dragAmount)
      .gesture(
          DragGesture()
              .onChanged { dragAmount =  $0.translation}
              .onEnded { _ in
                  withAnimation {
                      dragAmount = .zero
                  }
                 }
          
      )
   //   .animation(.spring(), value: dragAmount)
  */
        
        
        
        
        
        
    }
    
}

struct AnimatingGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGestures()
    }
}
