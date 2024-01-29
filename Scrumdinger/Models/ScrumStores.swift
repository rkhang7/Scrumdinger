//
//  ScrumStores.swift
//  Scrumdinger
//
//  Created by Khang on 29/01/2024.
//

import Foundation

class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL () throws -> URL{
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("scrums.data")
    }
}
