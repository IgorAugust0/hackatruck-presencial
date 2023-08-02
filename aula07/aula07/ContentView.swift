//
//  ContentView.swift
//  aula07
//
//  Created by Student14 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                VStack{
                    ScrollView{
                        Image("kendrick")
                            .resizable()
                            .scaledToFit().aspectRatio(contentMode: .fit)
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
                        
                        //                        HStack{
                        //
                        //                        }
                        
                        ForEach(songs) { item in
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
                                    Image(systemName: "ellipsis").foregroundColor(.white)
                                }
                            }
                        }
                        
                        NavigationStack{
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(songs) { item in
                                        NavigationLink( destination: DetalheView(currentSong: item)){
                                            
                                            AsyncImage(url: URL(string: item.cover)!) { image in
                                                image
                                                    .resizable()
                                                    .aspectRatio(1.0, contentMode: .fit)
                                                    .frame(width: 80, height: 80, alignment: .trailing)
                                                    .clipped()
                                                    .aspectRatio(contentMode: .fill)
                                            }placeholder: {
                                                Image(systemName: "photo.fill")
                                            }.padding(.trailing, 0.0).frame(width: 70 ,alignment: .trailing)
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
