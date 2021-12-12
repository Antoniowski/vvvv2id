//
//  GenericValues.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI

//GENERIC VALUES
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
    Episode(id: UUID(), title: "Golden Wind", description: jojo5episode1, number: 1, isWatched: true),
    Episode(id: UUID(), title: "Arriva Bucciarati", description: jojo5episode2, number: 2, isWatched: true),
    Episode(id: UUID(), title: "Il malavitoso dietro le sbarre", description: jojo5episode3, number: 3, isWatched: true),
    Episode(id: UUID(), title: "L'ingresso nella banda", description: jojo5episode4, number: 4, isWatched: true)
]

var aot4Episodes: [Episode] = [
    Episode(id: UUID(), title: "Al di là del mare", description: aot4Episode1, number: 60, isWatched: true),
    Episode(id: UUID(), title: "Il treno di mezzanotte", description: aot4Episode2, number: 61, isWatched: false),
    Episode(id: UUID(), title: "La porta della speranza", description: aot4Episode3, number: 62, isWatched: false),
]

var OPMEpisodes: [Episode] = [
    Episode(id: UUID(), title: "L'uomo più forte", description: opmEpisode1, number: 1, isWatched: true),
    Episode(id: UUID(), title: "Il cybord solitario", description: opmEpisode2, number: 2, isWatched: true),
]

var deathNoteEpisodes: [Episode] = [
    Episode(id: UUID(), title: "Rinascita", description: deathNoteEpisode1, number: 1, isWatched: false),
    Episode(id: UUID(), title: "Confronto", description: deathNoteEpisode2, number: 2, isWatched: false),
]

var demonSlayerEpisodes: [Episode] = [
    Episode(id: UUID(), title: "Crudeltà", description: demonSlayerEpisode1, number: 1, isWatched: true),
    Episode(id: UUID(), title: "L'addestratore Urokodaki Sakonji", description: demonSlayerEpisode2, number: 2, isWatched: true)
]



//ANIME, FILM, SERIE TV TEST ITEMS

var evangelion = Series(id: UUID(), name: "Neo Genesis Evangelion", description: evangelionDescription,genres: [.Mecha, .Drammatico, .Azione], poster: Image("EvaPoster"), director: "Hideaki Anno", yearOfRelease: 1995, favoriteNum: 1832942, views: 8231390, isFavorite: false, watched: false, category: .Anime, episodesNum: 26, episodes: evangelionEpisodes)

var attackOnTitan = Series(id: UUID(), name: "Attack on Titan", description: aotDescription, genres: [.Azione, .Drammatico, .Shonen], poster: Image("AoTPoster"), director: "Tetsurou Araki", yearOfRelease: 2013, favoriteNum: 832173, views: 5023493, isFavorite: true, watched: true, category: .Anime, episodesNum: 24, episodes: aotEpisodes)

var jojoVentoAureo = Series(id: UUID(), name: "Le bizzarre avventure di Jojo: Vento Aureo", description: jojo5Description, genres: [.Avventura, .Fantasy, .Shonen], poster: Image("Jojo5Poster"), director: "Kohei Ashiya", yearOfRelease: 2018, favoriteNum: 1923843, views: 938234, isFavorite: false, watched: true, category: .Anime, episodesNum: 39, episodes: jojoEpisodes)

var attackOnTitan4 = Series(id: UUID(), name: "Attack on Titan - Final Season", description: aot4Description, genres: [.Shonen, .Drammatico, .Fantasy], poster: Image("AoT4Poster"), director: "Yūichirō Hayashi", yearOfRelease: 2020, favoriteNum: 130393, views: 391234, isFavorite: true, watched: true, category: .Anime, episodesNum: 16, episodes: aot4Episodes)

var onePunchMan = Series(id: UUID(), name: "One Punch Man", description: opmDescription, genres: [.Azione, .Commedia], poster: Image("OPPoster"), director: "Shingo Natsume", yearOfRelease: 2015, favoriteNum: 39138, views: 492043, isFavorite: false, watched: true, category: .Anime, episodesNum: 12, episodes: OPMEpisodes)

var deathNote = Series(id: UUID(), name: "Death Note", description: deathNoteDescription, genres: [.Mistery, .Thriller], poster: Image("DeathNotePoster"), director: "Tetsurō Araki", yearOfRelease: 2006, favoriteNum: 2357859, views: 4048349, isFavorite: false, watched: true, category: .Anime, episodesNum: 37, episodes: deathNoteEpisodes)

var demonSlayer = Series(id: UUID(), name: "Demon Slayer", description: demonSlayerDescription, genres: [.Shonen, .Azione, .Avventura], poster: Image("DemonSlayerPoster"), director: "Haruo Sotozaki", yearOfRelease: 2020, favoriteNum: 239234, views: 1932384, isFavorite: false, watched: true, category: .Anime, episodesNum: 24, episodes: demonSlayerEpisodes)

//ARRAY INITIALIZER

var testSeries: [Series] = [evangelion, attackOnTitan, jojoVentoAureo, deathNote, onePunchMan, attackOnTitan4, demonSlayer]

var testShowPreview: [(Series, Image)] = [(demonSlayer, Image("DemonSlayerFullPic")), (attackOnTitan4, Image("AoT4FullPic")), (onePunchMan, Image("opmFullPic"))]

var testRecents: [Series] = [attackOnTitan4, onePunchMan]
