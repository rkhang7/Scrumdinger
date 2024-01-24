//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Khang on 23/01/2024.
//

import SwiftUI


struct MeetingHeaderView: View {
    let secondElapsed: Int
    let secondsRemaining: Int
    
    private var totalSeconds: Int {
        secondElapsed + secondsRemaining
    }
    
    private var progress: Double{
        guard totalSeconds > 0 else { return 1 }
        return Double(secondElapsed) / Double(totalSeconds)
    }
    
    private var minutesRemaining: Int {
        secondsRemaining / 60
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondElapsed)", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.tophalf.fill")
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(secondElapsed: 60, secondsRemaining: 180)
            .previewLayout(.sizeThatFits)
    }
}
