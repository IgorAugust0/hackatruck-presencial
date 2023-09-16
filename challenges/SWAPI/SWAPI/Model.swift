//
//  Model.swift
//  SWAPI
//
//  Created by Student14 on 04/08/23.
//

import Foundation
// https://swapi.dev/api/people/?format=json

//struct SWResponse: Decodable {
//    let count: Int
//    let next: String?
//    let previous: String?
//    let results: [SWPerson]
//}
//
//struct SWPerson: Decodable, Identifiable {
//    let id: Int // Usando indice do array como id
//    let name: String?
//    let height: String?
//    let mass: String?
//    let hair_color: String?
//    let skin_color: String?
//    let eye_color: String?
//    let birth_year: String?
//    let gender: String?
//    let homeworld: String?
//    let films: [String]?
//    let species: [String]?
//    let vehicles: [String]?
//    let starships: [String]?
//    let created: Date?
//    let edited: Date?
//    let String?: String
//}

//// https://akabab.github.io/starwars-api/api/all.json
//struct StarWarsCharacter: Identifiable, Decodable {
//    let id: Int
//    let name: String?
//    let height: Double?
//    let mass: Int?
//    let gender: String?
//    let homeworld: String?
//    let wiki: String?
//    let image: String?
//    let born: Int?
//    let bornLocation: String?
//    let died: Int?
//    let diedLocation: String?
//    let species: String?
//    let hairColor: String?
//    let eyeColor: String?
//    let skinColor: String?
//    let cybernetics: String?
//    let affiliations: [String]?
//    let masters: [String]?
//    let apprentices: [String]?
//    let formerAffiliations: [String]?
//}

// https://hp-api.onrender.com/api/characters/house/gryffindor
struct Wand : Decodable {
    let wood : String?
    let core : String?
    let length : Double?
}

struct HaPo: Decodable, Identifiable {
    let id : String
    let name :  String?
    let alternate_names : [String]?
    let species :  String?
    let gender :  String?
    let house :  String?
    let dateOfBirth :  String?
    let yearOfBirth : Int?
    let wizard : Bool?
    let ancestry :  String?
    let eyeColour :  String?
    let lethairColour :  String?
    let wand : Wand
    let patronus:  String?
    let hogwartsStudent : Bool?
    let hogwartsStaff : Bool?
    let actor :  String?
    let alternate_actors : [String]?
    let alive : Bool?
    let image :  String?
}
