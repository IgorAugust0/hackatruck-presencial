//
//  MapLocation.swift
//  aula09
//
//  Created by Student14 on 03/08/23.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID ()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

struct Note: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

var locations = [
    Location(name: "New York",
             coordinate: CLLocationCoordinate2D(latitude: 40.7127837, longitude: -74.0059413),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_New_York_City.svg/640px-Flag_of_New_York_City.svg.png",
             description: "New York, often called New York City or NYC, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is the most densely populated major city in the United States."),
    Location(name: "Los Angeles",
             coordinate: CLLocationCoordinate2D(latitude: 34.0522342, longitude: -118.2436849),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Flag_of_Los_Angeles%2C_California.svg/1200px-Flag_of_Los_Angeles%2C_California.svg.png",
             description: "A place for bold dreams, creative expression and limitless possibilities, Los Angeles is a city defined by its people. One of the most culturally diverse destinations in the world with Angelenos from 140 countries who speak 224 different languages, LA inspires visitors to immerse themselves in unique perspectives, unexpected moments and open-hearted community. There’s always something new to discover in the City of Angels whether you’re a frequent visitor or a first timer, with an abundance of multi-faceted neighborhoods and hidden gems to explore. From world-class museums and championship sports teams to beautiful beaches and one-of-a-kind culinary experiences, Los Angeles invites you to join our vibrant, bustling community of dreamers and doers."),
    Location(name: "Chicago",
             coordinate: CLLocationCoordinate2D(latitude: 41.8781136, longitude: -87.6297982),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Flag_of_Chicago%2C_Illinois.svg/1200px-Flag_of_Chicago%2C_Illinois.svg.png",
             description: "The City of Chicago covers an area of 60,000 hectares and sits 176 meters (578 feet) above sea level on the southwestern shore of Lake Michigan. At 190 km wide and 495 km long, its the 5th largest body of fresh water in the world. The city is traversed by the Chicago and Calumet rivers."),
    Location(name: "Houston",
             coordinate: CLLocationCoordinate2D(latitude: 29.7604267, longitude: -95.3698028),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Flag_of_Houston%2C_Texas.svg/1920px-Flag_of_Houston%2C_Texas.svg.png",
             description: "Houston is the state's most populous city and the fourth largest city in the United States. Its skyscrapers rise from the unrelievedly flat Gulf Coastal Plain, which at Houston lies at an elevation of about 55 feet (17 metres) above sea level and is dissected by a series of bayous."),
    Location(name: "Phoenix",
             coordinate: CLLocationCoordinate2D(latitude: 33.4483771, longitude: -112.074037),
             flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Flag_of_Phoenix%2C_Arizona.svg/2560px-Flag_of_Phoenix%2C_Arizona.svg.png",
             description: "Phoenix is the capital city of Arizona and is located in the central region of the state. People may know it for its year-round sun, desert beauty, and world-class resorts and golf, but as the fifth-largest city in the U.S., it also offers sophisticated urbanscapes, southwest culture and lots of outdoor adventure."),
]
