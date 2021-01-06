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
       
        VStack {
            Text("Loading")
                .font(.system(size: 25, weight: .bold, design: .rounded))
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 250, height:7)
                .padding()
                .foregroundColor(Color(.systemGray5))
                .overlay (
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 30, height: 7)
                        .foregroundColor(.green)
                        .offset(x: isLoading ? 110 : -110)
                        .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                )
                .onAppear() {
                    isLoading = true
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
