//
//  ContentView.swift
//  aula07
//
//  Created by Student14 on 01/08/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var isSheetPresented = false
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                
                VStack {
                    ScrollView {
                        AsyncImage(url:
                                    URL(string: "https://i.discogs.com/HrgjHLlvo4e-l4Y3h40evhtvn_NXu3iuVZuq1E86mB0/rs:fit/g:sm/q:90/h:500/w:500/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTE3Nzg5/NzctMTQ3MDY4MDM5/Ny0xOTk0LmpwZWc.jpeg")){ image in
                            image
                                .resizable()
                                .scaledToFit()
                            
                        } placeholder: {
                            Color.gray
                        }
                        .frame(width: 200)
                        .padding()
                        
                        
                        HStack {
                            Text("This is K.dot ")
                                .font(.system(size: 32, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.leading)
                            Spacer()
                            
                        }
                        
                        HStack {
                            AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/79866605?v=4")){
                                image in image
                                    .resizable()
                                    .scaledToFit()
                            } placeholder: {
                                Color.gray
                            }
                            .frame(width: 20).padding(.leading)
                            
                            Text("Igor Augusto")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        
                        ForEach(searchResults) { item in
                            NavigationLink( destination: DetalheView(currentSong: item)){
                                HStack{
                                    AsyncImage(url: URL(string: item.cover)!) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(1.0, contentMode: .fit)
                                            .frame(width: 60, height: 60, alignment: .trailing)
                                            .clipped()
                                            .aspectRatio(contentMode: .fill)
                                        
                                    }placeholder: {
                                        Image(systemName: "photo.fill")
                                    }.padding(.trailing, 0.0).frame(width: 70 ,alignment: .trailing)
                                        .clipped()
                                    
                                    VStack (alignment: .leading){
                                        Text(item.name)
                                            .accentColor(.white)
                                        
                                        Text(item.artist)
                                            .accentColor(.gray)
                                            .font(.system(size: 14))
                                        
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis").foregroundColor(.white).onTapGesture {
                                        isSheetPresented = true
                                    }
                                }
                            }
                        }
                        
                        VStack{
                            HStack{
                                Text("Sugeridos")
                                    .font(.system(size: 28, weight: .bold))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(suggestions) { suggestion in
                                        
                                        VStack{
                                            AsyncImage(url:
                                                        URL(string: suggestion.albumCover)){ image in
                                                image
                                                    .resizable()
                                                    .scaledToFill()
                                                
                                            } placeholder: {
                                                Color.gray
                                            }
                                            .frame(width: 200)
                                            .padding()
                                            
                                            Text(suggestion.albumName)
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                    }
                }
                .padding()
            }
        }
        .tint(.white)
        .searchable(text: $searchText, prompt: "Busque sua música")
        .sheet(isPresented: $isSheetPresented) {
            // Custom sheet content
            VStack(spacing: 20) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.green)
                        Text("Favoritos")
                    }
                }
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.green)
                        Text("Adicionar a playlist")
                    }
                }
                Button(action: {}) {
                    HStack {
                        Image(systemName: "arrow.down.circle.fill")
                            .foregroundColor(.green)
                        Text("Download")
                    }
                }
            }
            .padding()
            .background(Color.gray.opacity(0.8))
            .cornerRadius(20)
            .foregroundColor(.white)
        }
    }
    
    var searchResults: [Song] {
        if searchText.isEmpty {
            return songs
        } else {
            return songs.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
