//
//  CarView.swift
//  ParkingLot
//
//  Created by Student14 on 09/08/23.
//

import SwiftUI

struct CarView: View {
    var cars: ParkingLot
    var body: some View {
        ZStack {
            // Background Image
            // Asyncimage(url: URL(string: , placeholder: ), content: )
            AsyncImage(url: URL(string: "https://images.pexels.com/photos/1756957/pexels-photo-1756957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                       content: { image in
                image.resizable()
            },
                       placeholder: {
                ProgressView()
            }).ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 10)
            VStack {
                // Image of the car
                AsyncImage(url: URL(string: cars.car[0].image ?? ""),
                           content: { image in
                    image
                        .resizable()
                        .scaledToFill()
                    
                }, placeholder: {
                    ProgressView()
                }).frame(width: 250, height: 250)
                    .background(Color.gray)
                    .clipShape(Circle())
                    .padding(10)
                // model of the car
                Text(cars.car[0].model)
                    .foregroundColor(.white)
                    .bold()
                // Year of the car
                Text("\(cars.car[0].year)")
                    .foregroundColor(.white)
                    .bold()
                // color of the car
                Text(cars.car[0].color)
                    .foregroundColor(.white)
                    .bold()
                // price of it
                Text("\(cars.car[0].price)")
                    .foregroundColor(.white)
                    .bold()
                // Gender
                Text("Parked in \(cars.parkingLotName) at the lot \(cars.lot)")
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}


