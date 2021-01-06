//
//  ContentView.swift
//  SwiftUI-Animations
//
//  Created by Pradyumn Shukla on 06/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    
    var body: some View {
        Circle()
            .frame(width: 200, height: 200)
            .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(heartColorChanged ? .red : .white)
                    .scaleEffect(heartSizeChanged ? 1 : 0.6)
            )
            .onTapGesture {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                    heartSizeChanged.toggle()

                }
                circleColorChanged.toggle()
                heartColorChanged.toggle()

            }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
