//
//  ContentView.swift
//  aula07
//
//  Created by Student14 on 01/08/23.
//
import Foundation
import SwiftUI

struct ContentView: View {
    // @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ZStack { // VSTACK
                LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()

                //     AsyncImage(url:
                //             URL(string: "https://i.pinimg.com/1200x/95/c9/45/95c945d8ddc1b3ecc0d367470e24aa8b.jpg")){ image in
                //     image
                //         .resizable()
                //         .scaledToFit()
                    
                // } placeholder: {
                //     Color.gray
                // }
                // .frame(width: 200)
                // .padding()
                VStack{
                    ScrollView{
                        Image("kendrick")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 250,alignment: .center)
                            .aspectRatio(1.0, contentMode: .fit)
                            .clipped()
                        
                        Text("HackaFM")
                            .font(.system(size: 36))
                            .multilineTextAlignment(.leading)
                            .colorInvert()
                            .frame(alignment: .trailing)
                            .padding(.trailing, 200.0)
                            .fixedSize()

                        // Playlist/Album Title
                        // HStack {
                        // Text("HackTruck FM")
                        //     .font(.system(size: 32, weight: .semibold))
                        //     .foregroundColor(.white)
                        //     .padding(.leading)
                        // Spacer()
                        // }
                        
                        // Author
                        HStack{
                            AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/79866605?v=4")){ image in image
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
                        
                        // ScrollView{
                        // VStack{
                        ForEach(searchResults) { item in
                            NavigationLink( destination: DetalheView(currentSong: item)){
                                HStack{
                                    AsyncImage(url: URL(string: item.cover)!) { image in
                                        image
                                            .resizable()
                                            // .scaledToFit()
                                            .aspectRatio(1.0, contentMode: .fit)
                                            .frame(width: 60, height: 60, alignment: .trailing)
                                            .clipped()
                                            .aspectRatio(contentMode: .fill)
                                        
                                    }placeholder: {
                                        Image(systemName: "photo.fill")
                                        // Color.gray
                                    }.padding(.trailing, 0.0).frame(width: 70 ,alignment: .trailing)
                                        .clipped()
                                    
                                    VStack (alignment: .leading){
                                        Text(item.name)
                                            .accentColor(.white)
                                        
                                        Text(item.artist)
                                            .accentColor(.gray)
                                            .font(.system(size: 14))
                                    }

                                    // VStack(){
                                    //         HStack{
                                    //             Text(item.name)
                                    //             Spacer()
                                    //         }
                                    //         HStack{
                                    //             Text(item.artist)
                                    //             Spacer()
                                    //         }
                                    // }
                                    // .foregroundColor(.white)

                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                        // .padding()
                                }
                            }
                        }
                        
                        // Sugestions
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
                //.padding()
            }// .background(LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .center))
        }
        .searchable(text: $searchText, prompt: "Busque sua música")
        .foregroundColor(.white)
        .accentColor(.white)
    }

    var searchResults: [Song] {
        if searchText.isEmpty {
            return songs
        } else {
            return songs.filter { $0.name.contains(searchText) }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
