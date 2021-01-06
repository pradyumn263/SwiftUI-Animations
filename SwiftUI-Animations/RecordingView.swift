//
//  RecordingView.swift
//  SwiftUI-Animations
//
//  Created by Pradyumn Shukla on 06/01/21.
//

import SwiftUI

struct RecordingView: View {
    @State private var isRecording = false
    @State private var beingRecorded = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: isRecording ? 30 : 10)
                .fill(isRecording ? Color.red : Color.green)
                .frame(width: isRecording ? 60 : 250, height: 60)
            RoundedRectangle(cornerRadius: 10)
                .trim(from: 0.0, to: isRecording ? 0.0001 : 1.0)
                .stroke(Color.green, lineWidth: 5)
                .frame(width: 260, height: 70)
            Image(systemName: "mic.fill")
                .font(.system(.title))
                .foregroundColor(.white)
                .scaleEffect(beingRecorded ? 1.0 : 0.7)
                
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                isRecording.toggle()
            }
            withAnimation(Animation.spring().repeatForever().delay(0.5)) {
                beingRecorded.toggle()
            }
        }
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView()
    }
}
