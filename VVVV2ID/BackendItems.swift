//
//  BackendItems.swift
//  VVVV2ID
//
//  Created by Antonio Romano on 09/12/21.
//

import SwiftUI

protocol GenericInfos {
    var name: String {get set}
    var description: String {get set}
    var director: String {get set}
    var yearOfRelease: Int {get set}
    var favoriteNum: Int {get set}
    var views: Int {get set}
    var isFavorite: Bool {get set}
    var watched: Bool {get set}
}

struct Movie: Identifiable, GenericInfos {
    var id: UUID
    var name: String
    var description: String
    var director: String
    var yearOfRelease: Int
    var favoriteNum: Int
    var views: Int
    var isFavorite: Bool
    var watched: Bool
    
    var vote: Float
}

struct Series: Identifiable, GenericInfos {
    var id: UUID
    var name: String
    var description: String
    var director: String
    var yearOfRelease: Int
    var favoriteNum: Int
    var views: Int
    var isFavorite: Bool
    var watched: Bool
    
    var episodes: Int
}
