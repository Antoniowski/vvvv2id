//
//  ContentView.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var movieContainer: MovieContainer
    @EnvironmentObject var seriesContainer: SeriesContainer
    
    var body: some View{
        TabView{
            animeView
                .tabItem({
                    Label("Anime", systemImage: "a.square.fill")
                })
            Text("Film")
                .tabItem({
                    Label("Film", systemImage: "film.fill")
                })
            Text("Serie TV")
                .tabItem({
                    Label("Serie TV", systemImage: "tv")
                })
            SearchView()
                .tabItem({
                    Label("Cerca", systemImage: "magnifyingglass")
                })
        }
        .preferredColorScheme(.dark)
    }
}


private extension ContentView{
    var animeView: some View{
        NavigationView{
            AnimeView()
                .toolbar{
                    ToolbarItem(placement: .principal, content: {
                        Image("vvvvidlogo")
                            .resizable()
                            .scaledToFit()
                    })
                    
                    ToolbarItem(placement: .navigationBarTrailing, content: {
                        Button(action: {}, label: {
                            ZStack{
                                Circle()
                                Image(systemName: "character")
                                    .foregroundColor(.white)
                            }
                            .foregroundColor(.accentColor)
                            .frame(width: UIScreen.screenWidth/11, height: UIScreen.screenWidth/11)
                            .padding(8)
                        })
                    })
                }
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct ContentView_Preview: PreviewProvider {
    @EnvironmentObject var movieContainer: MovieContainer
    @EnvironmentObject var seriesContainer: SeriesContainer
    
    static var previews: some View {
        ContentView()
    }
}
