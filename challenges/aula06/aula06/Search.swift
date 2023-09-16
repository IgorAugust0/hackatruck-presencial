//
//  Search.swift
//  aula06
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct Search: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 250, height: 250)
                    Text("Hello, Hackatruck!")
                        .foregroundColor(.black).bold()
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
