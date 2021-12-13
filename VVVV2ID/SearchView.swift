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
            ZStack{
                List{
                    ForEach(searchSeriesResults, id: \.self){serie in
                        SearchElement(show: serie)
                    }
                }
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
                        })
                        
                    })
                }
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
                if searchText.isEmpty {
                    VStack(){
                        Image(systemName: "questionmark")
                            .foregroundColor(.secondary)
                            .font(.system(size: UIScreen.screenHeight/5))
                            .opacity(0.4)
                        Text("Cosa vuoi vedere oggi?")
                            .foregroundColor(.secondary)
                            .opacity(0.4)
                        VStack{}.frame(height: UIScreen.screenHeight/5)
                    }
                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: .center)
                    
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct SearchView_Preview: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

