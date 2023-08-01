//
//  Home.swift
//  aula06
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct Home: View {
    @State var selectedTab = "1"
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                List {
                    ForEach(0..<50){i in
                        Text("Item \(i + 1)")
                    }
                }
                .tag("1")
                .navigationBarTitle("Home")
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .ignoresSafeArea(.all)
            .background()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
