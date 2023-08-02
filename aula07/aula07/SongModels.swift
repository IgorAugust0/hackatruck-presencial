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
    Song(id: 1, name: "Humble", artist: "Kendrick Lamar", cover: "https://i.discogs.com/kNfYUBXYqME4lUL1xJ-UDET4z41wIuq_PZmKqE6R-ds/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMTM1/MjE2LTE2NTk3MTQy/MTktMzYzOS5qcGVn.jpeg"),
    Song(id: 2, name: "Swimming Pools", artist: "Kendrick Lamar", cover: "https://i.discogs.com/jmNun9UgjCQUZfFnb5c9Hdpgtnea4C1BKS1wDPSewSY/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3NzQy/MDEtMTU4NjA5MTI3/OC05NzExLmpwZWc.jpeg"),
    Song(id: 3, name: "DNA", artist: "Kendrick Lamar", cover: "https://i.discogs.com/kNfYUBXYqME4lUL1xJ-UDET4z41wIuq_PZmKqE6R-ds/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMTM1/MjE2LTE2NTk3MTQy/MTktMzYzOS5qcGVn.jpeg"),
    Song(id: 4, name: "Alright", artist: "Kendrick Lamar", cover: "https://i.discogs.com/mzZN2JyPeiMrz8YnZd04bKifNZ36K5zMECcfHvnTzFk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NTc5/NTctMTQ0Mzk4MjAy/NC01NTk2LmpwZWc.jpeg"),
    Song(id: 5, name: "LOVE.", artist: "Kendrick Lamar", cover: "https://i.discogs.com/kNfYUBXYqME4lUL1xJ-UDET4z41wIuq_PZmKqE6R-ds/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEwMTM1/MjE2LTE2NTk3MTQy/MTktMzYzOS5qcGVn.jpeg"),
    Song(id: 6, name: "A.D.H.D", artist: "Kendrick Lamar", cover: "https://i.discogs.com/ImcVkGJDJe2Se_29eAISxUgQw9a-rnZE5jHsx4B8CEg/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTMzNjkw/NDItMTY1OTcxMzU0/Ni0zODg3LmpwZWc.jpeg"),
    Song(id: 7, name: "King Kunta", artist: "Kendrick Lamar", cover: "https://i.discogs.com/mzZN2JyPeiMrz8YnZd04bKifNZ36K5zMECcfHvnTzFk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTc1NTc5/NTctMTQ0Mzk4MjAy/NC01NTk2LmpwZWc.jpeg"),
    Song(id: 8, name: "Rich Spirit", artist: "Kendrick Lamar", cover: "https://i.discogs.com/PrYdQZwjjfcA7Z9lBOCS0end7SBIO1-P3hGlGoc8Q04/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzMjA4/NjE0LTE2NTI0MjQw/NjgtOTUzNy5qcGVn.jpeg")
]

var suggestion = [
    Suggestions(id: 1, albumCover: "https://i.discogs.com/jPj-oBwQeeoXiwNf4qy-x7i7O8wtGHzrJ1TcE_FvtrI/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEyODk2/MDkxLTE1ODc0Njgy/ODgtODEzNi5qcGVn.jpeg", albumName: "Stoney"),
    Suggestions(id: 2, albumCover: "https://i.discogs.com/R4vGv3I86Jp_sR1ASGeQOa-qgnJg_qNFr-sb_ea0S1Y/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTExOTIz/MzM5LTE1ODc0Njgy/MDctNjY5Ny5qcGVn.jpeg", albumName: "Beerbongs & Bentleys"),
    Suggestions(id: 3, albumCover: "https://i.discogs.com/tmsUlvveZXuHiMXgMyFKy0sY9P_Sa5N7clriasXUxIw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0MDg1/NTU0LTE1Njc1NjM4/MzItNDEyNC5qcGVn.jpeg", albumName: "Hollywood's Bleeding"),
    Suggestions(id: 4, albumCover: "https://i.discogs.com/qTp0weGqL8RZpWs-7zp7SSZBwjZ7i4owM2aBhDGdHME/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIzNDYw/MzgwLTE2NjI5OTk2/MzctMzg2MC5qcGVn.jpeg", albumName: "Twelve Carat Toothache"),
    Suggestions(id: 5, albumCover: "https://i.discogs.com/WMAI_GV2VdNpOlMrzcZX9dR_NphBTPaTkxQWOmSaxsw/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI3ODAw/Nzc4LTE2OTA0OTUx/NTMtNzkyNC5wbmc.jpeg", albumName: "Austin"),
]
