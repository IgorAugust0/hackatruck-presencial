//
//  Model.swift
//  ParkingLot
//
//  Created by Student14 on 09/08/23.
//

import Foundation

// http://127.0.0.1:1880/igor
struct Car : Decodable, Hashable {
    let model : String
    let year : Int
    let color : String
    let price : Double
    let image: String?
}

struct ParkingLot: Decodable, Hashable {
    let parkingLotName : String
    let address: String
    let lot: Int
    let car : [Car]
    let image: String?
}
