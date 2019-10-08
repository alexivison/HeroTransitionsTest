//
//  Profile.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import Foundation

struct Album {
    let id: Int
    let title: String
    let band: Band
    let genre: [Genre]
    let tracks: [Track]
    let releaseDate: Date
    let thumbnailUrl: String
    
    enum Genre: String {
        case metal = "Metal"
        case rock = "Rock"
        case electronic = "Electronic"
        case jazz = "Jazz"
        case blues = "blues"
        case experimental = "Experimental"
    }
    
    init(id: Int, title: String, band: Band, genre: [Genre], tracks: [Track], releaseDate: Date, thumbnailUrl: String) {
        self.id = id
        self.title = title
        self.band = band
        self.genre = genre
        self.tracks = tracks
        self.releaseDate = releaseDate
        self.thumbnailUrl = thumbnailUrl
    }
}
