//
//  SongModels.swift
//  aula07
//
//  Created by Student14 on 01/08/23.
//

import Foundation

// scrollView Horizontal
struct Suggestions : Identifiable {
    var id: Int
    var albumCover : String
    var albumName : String
}


// Lista principal
struct Song : Identifiable {
    var id: Int
    var name: String
    var artist: String
    var cover: String
}

var songs = [
    Song(id: 1, name: "DAMN", artist: "Kendrick Lamar", cover: "https://i.discogs.com/kNfYUBXYqME4lUL1xJ-UDET4z41wIuq_PZmKqE6R-ds/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMTM1/MjE2LTE2NTk3MTQy/MTktMzYzOS5qcGVn.jpeg"),
    Song(id: 2, name: "To Pimp A Butterfly", artist: "Kendrick Lamar", cover: "https://i.discogs.com/mzZN2JyPeiMrz8YnZd04bKifNZ36K5zMECcfHvnTzFk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NTc5/NTctMTQ0Mzk4MjAy/NC01NTk2LmpwZWc.jpeg")
]

