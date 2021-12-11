//
//  SearchView.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 10/12/21.
//

import SwiftUI

struct SearchView: View{
    @EnvironmentObject var movieContainer: MovieContainer
    @EnvironmentObject var seriesContainer: SeriesContainer
    
    @State var searchText: String = ""
    var searchFilmResults: [Movie]{
        if searchText.isEmpty{
            return []
        }else{
            return self.movieContainer.GetAllMovies()
        }
    }
    
    var searchSeriesResults: [Series]{
        if searchText.isEmpty{
            return []
        }else{
            return self.seriesContainer.GetAllSeries().filter{$0.name.lowercased().contains(searchText.lowercased())}
        }
    }
    var body: some View{
        NavigationView{
            List{
                ForEach(searchSeriesResults, id: \.self){serie in
                    SearchElement(show: serie)
                }
            }
            .navigationTitle("Cerca")
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
        }
        .preferredColorScheme(.dark)
    }
}

struct SearchView_Preview: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

