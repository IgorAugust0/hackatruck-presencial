//
//  CharView.swift
//  SWAPI
//
//  Created by Student14 on 04/08/23.
//

import SwiftUI

struct CharView: View {
    //var swchar: StarWarsCharacter
    var swchar: HaPo
    var body: some View {
        ZStack {
            // Background Image
            // Asyncimage(url: URL(string: , placeholder: ), content: )
            AsyncImage(url: URL(string: "https://wallpaperaccess.com/full/496873.jpg"),
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
                // Species
                Text(swchar.house!)
                    .foregroundColor(.white)
                    .bold()
                // Name
                Text(swchar.name!)
                    .foregroundColor(.white)
                    .bold()
                // Homeworld
                Text(swchar.dateOfBirth!)
                    .foregroundColor(.white)
                    .bold()
                // Eye color
                Text(swchar.eyeColour!)
                    .foregroundColor(.white)
                    .bold()
                // Gender
                Text(swchar.gender!)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}
