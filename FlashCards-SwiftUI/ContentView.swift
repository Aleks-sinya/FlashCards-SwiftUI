//
//  ContentView.swift
//  FlashCards-SwiftUI
//
//  Created by Алексей Синяговский on 15.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @GestureState var dragState: DragState = .inactive
    
    var body: some View {

        
        let dragGesture = DragGesture()
            .updating($dragState) { (value, state, trans) in
                state = .dragging(translation: value.translation)
            }
        ZStack {
            CardView(title: "Third", color: Color.init(
                red: 99 / 255,
                green: 33 / 255,
                blue: 202 / 255
            ))
            .blendMode(.hardLight)
            .padding(dragState.isActive ? 32 : 64)
            .padding(.bottom, dragState.isActive ? 32 : 64)
            .animation(.spring(), value: dragState.translation)
            
            CardView(title: "Second", color: Color.init(
                red: 68 / 255,
                green: 41 / 255,
                blue: 182 / 255
            ))
            .blendMode(.hardLight)
            .padding(dragState.isActive ? 16 : 32)
            .padding(.bottom, dragState.isActive ? 0 : 32)
            .animation(.spring(), value: dragState.translation)
            
            CardView(title: "Main Card", color: .black)
                .offset(
                    x: dragState.translation.width,
                    y: dragState.translation.height
                )
                .gesture(dragGesture)
                .animation(.spring(), value: dragState.translation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
