//
//  ContentView.swift
//  aula06
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection:$selection) {
            Home()
                .badge(2)
                .tabItem {
                    Label("Home", systemImage: "figure.stand.line.dotted.figure.stand")
                }
                .tag(1)
            
            Search()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(2)
            
            Photos()
                .tabItem {
                    Label("Photos", systemImage: "photo")
                }
                .tag(3)
            
            Messages()
                .badge(2)
                .tabItem {
                    Label("Messages", systemImage: "message")
                }
                .tag(4)
            
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
                .tag(5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
