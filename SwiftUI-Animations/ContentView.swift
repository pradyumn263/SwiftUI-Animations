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
       
        ZStack {
            Text("\(Int(progress*100))%")
                .font(.system(.title, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 10)
                .frame(width: 150, height: 150)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.green, lineWidth: 10)
                .frame(width: 150, height: 150)
                .rotationEffect(.degrees(-90))
        }
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                progress += 0.05
                if progress >= 1.0 {
                    timer.invalidate()
                }
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
