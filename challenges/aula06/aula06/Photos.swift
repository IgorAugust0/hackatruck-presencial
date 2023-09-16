//
//  Photos.swift
//  aula06
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct Photos: View {
    let icons = ["hare.fill", "tortoise.fill", "pawprint.fill", "ant.fill", "figure.stand"]
    var body: some View {
            ScrollView(.vertical) {
                VStack(spacing: 16) {
                    ForEach(icons, id: \.self) { icon in
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250)
                            .foregroundColor(.black)
                            .padding()
                    }
                }
                .padding(16)
            }
        }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
