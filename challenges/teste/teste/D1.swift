//
//  D1.swift
//  teste
//
//  Created by Student14 on 27/07/23.
//

//
//  ContentView.swift
//  teste
//
//  Created by Student14 on 27/07/23.
//

import SwiftUI

struct D1: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable().scaledToFit()
            Text("HackaTruck").font(.title).foregroundColor(.blue).bold()
            HStack {
                Text("Maker").bold().foregroundColor(.yellow)
                Text("Space").bold().foregroundColor(.red)
            }
        }
        .padding()
    }
}

struct D1_Previews: PreviewProvider {
    static var previews: some View {
        D1()
    }
}


