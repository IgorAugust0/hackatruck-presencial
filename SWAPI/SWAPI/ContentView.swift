//
//  ContentView.swift
//  SWAPI
//
//  Created by Student14 on 04/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack {
                // Background Image
                AsyncImage(url: URL(string: "https://wallpaperaccess.com/full/496873.jpg"), content: {
                    image in image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }, placeholder: {
                    ProgressView()
                })
                .ignoresSafeArea()
                .frame(width: 399, height: 250)
                
                ScrollView {
                    ForEach(viewModel.person){
                        p in NavigationLink(destination: CharView(swchar: p)) {
                            HStack {
                                AsyncImage(url: URL(string: p.image!), content: {
                                    image in image
                                        .resizable()
                                        .scaledToFill()
                                }, placeholder: {
                                    ProgressView()
                                }).frame(width: 90, height: 90)
                                    .background(Color.gray)
                                    .clipShape(Circle())
                                    .padding(10)
                                Text(p.name!)
                                Spacer()
                            }
                        }
                    }
                }
            }
            .foregroundColor(.white)
            .ignoresSafeArea()
            .background(Color("bg_scroll"))
            
        }.accentColor(.yellow)
        .onAppear() {
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
