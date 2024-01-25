//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by Khang on 24/01/2024.
//

import SwiftUI

struct NewScrumSheet: View {
    @State private var newScrum = DailyScrum.emptyScrum
    @Binding var scrums: [DailyScrum]
    @Binding var isPressentingNewScrumView: Bool
    var body: some View {
        NavigationStack(root: {
            DetailEditView(scrum: $newScrum)
                .toolbar{
                    ToolbarItem(placement: .cancellationAction){
                        Button("Dismiss"){
                            isPressentingNewScrumView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction){
                        Button("Add"){
                            scrums.append(newScrum)
                            isPressentingNewScrumView = false
                        }
                    }
                }
        })
    }
}

struct NewScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        NewScrumSheet(scrums: .constant(DailyScrum.sampleData), isPressentingNewScrumView: .constant(true))
    }
}
