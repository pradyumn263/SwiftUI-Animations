//
//  ContentView.swift
//  SwiftUI-Animations
//
//  Created by Pradyumn Shukla on 06/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
       
        
        HStack {
            ForEach (0...4, id: \.self) { index in
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(.green)
                    .scaleEffect(isLoading ? 0 : 1)
                    .animation(Animation.linear(duration: 0.6).repeatForever(autoreverses: true).delay(0.2 * Double(index)))
            }
        }
        .onAppear() {
            isLoading = true
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
