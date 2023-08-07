//
//  CharView.swift
//  SWAPI
//
//  Created by Student14 on 04/08/23.
//

import SwiftUI

struct CharView: View {
    var swchar: StarWarsCharacter
    var body: some View {
        ZStack {
            // Background Image
            // Asyncimage(url: URL(string: , placeholder: ), content: )
            AsyncImage(url: URL(string: "https://www.mordeo.org/files/uploads/2021/01/Star-Wars-Logo-4K-Ultra-HD-Mobile-Wallpaper-scaled.jpg"),
                       content: { image in
                image.resizable()
            },
                       placeholder: {
                ProgressView()
            }).ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 10)
            VStack {
                // Image of the character
                AsyncImage(url: URL(string: swchar.image!),
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
                // Spe
                Text(swchar.species!)
                    .foregroundColor(.white)
                    .bold()
                Text(swchar.name!)
                    .foregroundColor(.white)
                    .bold()
                Text(swchar.homeworld!)
                    .foregroundColor(.white)
                    .bold()
                Text(swchar.eyeColor!)
                    .foregroundColor(.white)
                    .bold()
                Text(swchar.gender!)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}
