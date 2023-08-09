//
//  CarView.swift
//  ParkingLot
//
//  Created by Student14 on 09/08/23.
//

import SwiftUI

struct CarView: View {
    var pklot: ParkingLot
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
                AsyncImage(url: URL(string: pklot.car.image!),
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
                // Species
                Text(pklot.car.model)
                    .foregroundColor(.white)
                    .bold()
                // Year of the car
                Text("\(pklot.car.year)")
                    .foregroundColor(.white)
                    .bold()
                // Homeworld
                Text(pklot.car.color)
                    .foregroundColor(.white)
                    .bold()
                // Eye color
                Text("\(pklot.car.price)")
                    .foregroundColor(.white)
                    .bold()
                // Gender
                Text("Parked in \(pklot.parkingLotName) at the lot \(pklot.lot)")
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}
