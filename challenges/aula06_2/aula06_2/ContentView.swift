//
//  ContentView.swift
//  aula06_2
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("modo 1") {
                    ModoUm()
                }
                NavigationLink("modo 2") {
                    ModoDois()
                }
                Button("modo 3") {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
            }
            .navigationTitle("Desafio 2")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

