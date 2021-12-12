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
    @StateObject var movieContainer = MovieContainer()
    @StateObject var seriesContainer = SeriesContainer(seriesArray: testSeries)
    @StateObject var recentSeries: RecentSeriesContainer = RecentSeriesContainer(seriesArray: testRecents)
    @StateObject var recentFilms: RecentMovieContainer = RecentMovieContainer()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(movieContainer)
                .environmentObject(seriesContainer)
                .environmentObject(recentFilms)
                .environmentObject(recentSeries)
        }
    }
}
