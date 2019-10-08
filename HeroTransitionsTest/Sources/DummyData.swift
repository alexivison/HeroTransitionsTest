//
//  DummyData.swift
//  HeroTransitionsTest
//
//  Created by tuominen-aleksi on 2019/10/04.
//  Copyright © 2019 tuominen-aleksi. All rights reserved.
//

import Foundation

let DummyAlbums: [Album] = [
    Album(
        id: 0,
        title: "amo",
        band: Band(id: 0, name: "Bring Me the Horizon"),
        genre: [.rock],
        tracks: [
            Track(id: 0, number: 1, title: "i apologize if you feel something", length: TimeInterval(2.20)),
            Track(id: 1, number: 2, title: "MANTRA", length: TimeInterval(3.53)),
            Track(id: 2, number: 3, title: "nihilist blues (feat. Grimes)", length: TimeInterval(5.26)),
            Track(id: 3, number: 4, title: "in the dark", length: TimeInterval(4.31)),
            Track(id: 4, number: 5, title: "wonderful life (feat. Dani Filth)", length: TimeInterval(4.34)),
            Track(id: 5, number: 6, title: "ouch", length: TimeInterval(1.49)),
            Track(id: 6, number: 7, title: "medicine", length: TimeInterval(3.47)),
            Track(id: 7, number: 8, title: "sugar honey ice & tea", length: TimeInterval(4.22)),
            Track(id: 8, number: 9, title: "why you gotta kick me when i'm down?", length: TimeInterval(4.29)),
            Track(id: 9, number: 10, title: "fresh bruises", length: TimeInterval(3.18)),
            Track(id: 10, number: 11, title: "mother tongue", length: TimeInterval(3.37)),
            Track(id: 11, number: 12, title: "heavy metal (feat. Rahzel)", length: TimeInterval(4.01)),
            Track(id: 12, number: 13, title: "i don't know what to say", length: TimeInterval(5.52)),
        ],
        releaseDate: Date(timeIntervalSinceNow: 1.0),
        thumbnailUrl: "image0"
    ),
    Album(
        id: 1,
        title: "Alien",
        band: Band(id: 1, name: "Northlane"),
        genre: [.metal],
        tracks: [
            Track(id: 0, number: 1, title: "Details Matter", length: TimeInterval(4.05))
        ],
        releaseDate: Date(timeIntervalSinceNow: 1.0),
        thumbnailUrl: "image1"
    ),
    Album(
        id: 2,
        title: "Periphery IV: HAIL STAN",
        band: Band(id: 2, name: "Periphery"),
        genre: [.metal],
        tracks: [
            Track(id: 0, number: 1, title: "Reptile", length: TimeInterval(16.44))
        ],
        releaseDate: Date(timeIntervalSinceNow: 1.0),
        thumbnailUrl: "image2"
    ),
    Album(
        id: 3,
        title: "The Fallen Host",
        band: Band(id: 3, name: "Blueneck"),
        genre: [.rock],
        tracks: [
            Track(id: 0, number: 1, title: "(Depart from Me, You Who Are Cursed)", length: TimeInterval(3.49))
        ],
        releaseDate: Date(timeIntervalSinceNow: 1.0),
        thumbnailUrl: "image3"
    ),
    Album(
        id: 4,
        title: "Murhat",
        band: Band(id: 4, name: "Ajattara"),
        genre: [.metal],
        tracks: [
            Track(id: 0, number: 1, title: "Kunnes Taivas Meidät Erottaa", length: TimeInterval(3.02))
        ],
        releaseDate: Date(timeIntervalSinceNow: 1.0),
        thumbnailUrl: "image4"
    ),
    Album(
        id: 5,
        title: "Outer Edges",
        band: Band(id: 5, name: "Noisia"),
        genre: [.electronic],
        tracks: [
            Track(id: 0, number: 1, title: "The Approach", length: TimeInterval(1.29))
        ],
        releaseDate: Date(timeIntervalSinceNow: 1.0),
        thumbnailUrl: "image5"
    ),
    Album(
        id: 6,
        title: "Common Ground",
        band: Band(id: 6, name: "Above & Beyond"),
        genre: [.electronic],
        tracks: [
            Track(id: 0, number: 1, title: "The Inconsistency Principle", length: TimeInterval(3.17))
        ],
        releaseDate: Date(timeIntervalSinceNow: 1.0),
        thumbnailUrl: "image6"
    ),
]
