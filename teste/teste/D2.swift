//
//  ContentView.swift
//  teste
//
//  Created by Student14 on 27/07/23.
//

import SwiftUI

struct D2: View {
    var body: some View {
        VStack {
            Image("caminhao").resizable().frame(width: 380, height: 200).scaledToFill().offset(y: -40)
            Spacer()
        }
        
        ZStack{
            Text("HackaTruck").font(.system(size: 30, weight: .heavy)).foregroundColor(.blue)
                .zIndex(1).offset(y: -60)
            Image("caminhao").resizable().aspectRatio(contentMode: .fit).clipShape(Circle())
        }
        
        VStack{
            Spacer()
            HStack(alignment: .center) {
                Text("Maker").font(.system(size: 20, weight: .heavy)).bold().foregroundColor(.yellow)
                Text("Space").font(.system(size: 20, weight: .heavy)).bold().foregroundColor(.red)
            }
            
            .frame(minWidth: 250, minHeight: 50, maxHeight: 150)
            .background(Color.black)
            .ignoresSafeArea()
        }
    }
}

struct D2_Previews: PreviewProvider {
    static var previews: some View {
        D2()
    }
}
