//
//  ContentView.swift
//  SwiftUI-Animations
//
//  Created by Pradyumn Shukla on 06/01/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    
    var body: some View {
        
        Circle()
            .stroke(Color(.systemGray5), lineWidth: 14)
            .frame(width: 100, height: 100)
            .overlay (
                Circle()
                    .trim(from: 0, to: 0.3)
                    .stroke(Color.green, lineWidth: 5)
                    .frame(width: 100, height: 100)
                    .rotationEffect(isLoading ? .degrees(360) : .zero)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                    .onAppear() {
                        isLoading = true
                    }
            )
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
