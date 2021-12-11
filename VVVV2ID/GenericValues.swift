//
//  GenericValues.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI

//GENERIC VALUS
var cornerRadiusValue: CGFloat = 15

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

//ANIME EPISODES

var evangelionEpisodes: [Episode] = [
    Episode(id: UUID(), title: "ANGEL ATTACK", description: evangelionEpisode1, number: 1, isWatched: true),
    Episode(id: UUID(), title: "THE BEAST", description: evangelionEpisode2, number: 2, isWatched: false)
]

var aotEpisodes: [Episode] = [
    Episode(id: UUID(), title: "A te, fra 2000 anni", description: aotEpisode1, number: 1, isWatched: true),
    Episode(id: UUID(), title: "Quel giorni", description: aotEpisode2, number: 2, isWatched: true),
    Episode(id: UUID(), title: "La luce opaca tra la disperazione", description: aotEpisode3, number: 3, isWatched: false),
    Episode(id: UUID(), title: "La notte della cerimonia dello scioglimento", description: aotEpisode4, number: 4, isWatched: false)
]

var jojoEpisodes: [Episode] = [
    Episode(id: UUID(), title: "Golden Wind", description: "", number: 1, isWatched: true),
    Episode(id: UUID(), title: "Arriva Bucciarati", description: "", number: 2, isWatched: true),
    Episode(id: UUID(), title: "Il malavitoso dietro le sbarre", description: "", number: 3, isWatched: true),
    Episode(id: UUID(), title: "L'ingresso nella banda", description: "", number: 4, isWatched: true)
]


//ANIME, FILM, SERIE TV TEST ITEMS

var evangelion = Series(id: UUID(), name: "Neo Genesis Evangelion", description: evangelionDescription,genres: [.Mecha, .Drammatico, .Azione], poster: Image("EvaPoster"), director: "Hideaki Anno", yearOfRelease: 1995, favoriteNum: 1832942, views: 8231390, isFavorite: false, watched: false, category: .anime, episodesNum: 26, episodes: evangelionEpisodes)

var attackOnTitan = Series(id: UUID(), name: "Attack on Titan", description: aotDescription, genres: [.Azione, .Drammatico, .Shonen], poster: Image("AoTPoster"), director: "Tetsurou Araki", yearOfRelease: 2013, favoriteNum: 832173, views: 5023493, isFavorite: true, watched: true, category: .anime, episodesNum: 24, episodes: aotEpisodes)

var jojoVentoAureo = Series(id: UUID(), name: "Le bizzarre avventure di Jojo: Vento Aureo", description: jojo5Description, genres: [.Avventura, .Fantasy, .Shonen], poster: Image("Jojo5Poster"), director: "Kohei Ashiya", yearOfRelease: 2018, favoriteNum: 1923843, views: 938234, isFavorite: false, watched: true, category: .anime, episodesNum: 39, episodes: jojoEpisodes)





//ARRAY INITIALIZER

var testSeries: [Series] = [evangelion, attackOnTitan, jojoVentoAureo]
