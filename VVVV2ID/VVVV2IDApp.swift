//
//  VVVV2IDApp.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI

@main
struct VVVV2IDApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
