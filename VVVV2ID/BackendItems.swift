//
//  BackendItems.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI

enum SeriesCategory{
    case anime
    case tvSeries
    case film
}

protocol GenericInfos {
    var name: String {get set}
    var description: String {get set}
    var poster: Image {get set}
    var director: String {get set}
    var yearOfRelease: Int {get set}
    var favoriteNum: Int {get set}
    var views: Int {get set}
    var isFavorite: Bool {get set}
    var watched: Bool {get set}
    var category: SeriesCategory {get set}
}

struct Movie: Identifiable, GenericInfos {
    var id: UUID
    var name: String
    var description: String
    var poster: Image
    var director: String
    var yearOfRelease: Int
    var favoriteNum: Int
    var views: Int
    var isFavorite: Bool
    var watched: Bool
    var category: SeriesCategory
    
    var vote: Float
}

struct Series: Identifiable, GenericInfos, Hashable {
    static func == (lhs: Series, rhs: Series) -> Bool {
        if(
        lhs.name == rhs.name &&
        lhs.id == rhs.id &&
        lhs.description == rhs.description &&
        lhs.poster == rhs.poster &&
        lhs.director == rhs.director &&
        lhs.yearOfRelease == rhs.yearOfRelease &&
        lhs.favoriteNum == rhs.favoriteNum &&
        lhs.views == rhs.views &&
        lhs.isFavorite == rhs.isFavorite &&
        lhs.watched == rhs.watched &&
        lhs.category == rhs.category &&
        lhs.episodesNum == rhs.episodesNum &&
        lhs.episodes == rhs.episodes){
            return true
        }else{
            return false
        }
    }

    var id: UUID
    var name: String
    var description: String
    var poster: Image
    var director: String
    var yearOfRelease: Int
    var favoriteNum: Int
    var views: Int
    var isFavorite: Bool
    var watched: Bool
    var category: SeriesCategory
    
    var episodesNum: Int
    var episodes: [Episode]
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

struct Episode: Identifiable, Hashable, Equatable {
    var id: UUID
    var title: String
    var description: String
    var number: Int
    var isWatched: Bool
}
