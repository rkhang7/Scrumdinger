//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Khang on 17/01/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
