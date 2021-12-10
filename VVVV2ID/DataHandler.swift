//
//  DataHandler.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 10/12/21.
//

import SwiftUI

class MovieContainer{
    private var movies: [Movie]
    
    init(){
        self.movies = []
    }
    
    init(movieArray: [Movie]){
        self.movies = movieArray
    }
    
    func GetAllMovies()->[Movie]{
        return self.movies
    }
    
    func GetMovieByName(title: String)->Movie{
        var index: Int = 0
        while self.movies[index].name != title{
            index += 1
        }
        return self.movies[index]
    }
}

class SeriesContainer{
    private var series: [Series]
    
    init(){
        self.series = []
    }
    
    init(seriesArray: [Series]){
        self.series = seriesArray
    }
    
    func GetAllSeries()->[Series]{
        return self.series
    }
    
    func GetSeriesByName(title: String)->Series{
        var index: Int = 0
        while self.series[index].name != title{
            index += 1
        }
        return self.series[index]
    }
    
    func GetAllTVSeries()->[Series]{
        var tvSeries: [Series] = []
        for x in 0..<self.series.count{
            if self.series[x].category == .tvSeries{
                tvSeries.append(self.series[x])
            }
        }
        return tvSeries
    }
    
    func GetTVSeriesByName(title: String)->Series{
        var tvSeries: [Series] = []
        for x in 0..<self.series.count{
            if self.series[x].category == .tvSeries{
                tvSeries.append(self.series[x])
            }
        }
        var index = 0
        while tvSeries[index].name != title{
            index += 1
        }
        return tvSeries[index]
    }
    
    func GetAllAnime()->[Series]{
        var animes: [Series] = []
        for x in 0..<self.series.count{
            if self.series[x].category == .anime{
                animes.append(self.series[x])
            }
        }
        return animes
    }
    
    func GetAnimeByName(title: String)->Series{
        var animes: [Series] = []
        for x in 0..<self.series.count{
            if self.series[x].category == .anime{
                animes.append(self.series[x])
            }
        }
        var index = 0
        while animes[index].name != title{
            index += 1
        }
        return animes[index]
    }
}
