//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Khang on 17/01/2024.
//

import SwiftUI


@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData


    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
