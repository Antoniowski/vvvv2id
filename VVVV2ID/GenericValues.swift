//
//  GenericValues.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}


var evangelionEpisodes: [Episode] = [
    Episode(id: UUID(), title: "ANGEL ATTACK", description: evangelionEpisode1, number: 1),
    Episode(id: UUID(), title: "THE BEAST", description: evangelionEpisode2, number: 2)
]

//ANIME, FILM, SERIE TV TEST ITEMS

var evangelion = Series(id: UUID(), name: "Neo Genesis Evangelion", description: evangelionDescription, poster: Image("EvaPoster"), director: "Hideaki Anno", yearOfRelease: 1995, favoriteNum: 1832942, views: 8231390, isFavorite: false, watched: true, category: .anime, episodesNum: 26, episodes: evangelionEpisodes)
