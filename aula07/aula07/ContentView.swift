//
//  ContentView.swift
//  aula07
//
//  Created by Student14 on 01/08/23.
//

import SwiftUI

struct DetalheView: View {
    var currentSong: Song
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                ScrollView{
                    AsyncImage(url: URL(string: currentSong.cover)!) { image in
                        image
                            .resizable()
                            .aspectRatio(1.0, contentMode: .fit)
                            .frame(width: 300, height: 300, alignment: .center)
                            .clipped()
                            .aspectRatio(contentMode: .fit)
                    }placeholder: {
                        Image(systemName: "photo.fill")
                    }.padding(.bottom, 80.0).frame(width: 70, alignment: .center)
                    VStack{
                        Text(currentSong.name)
                            .font(.system(size: 28))
                            .multilineTextAlignment(.leading)
                            .colorInvert()
                            .frame(alignment: .leading)
                            .padding(.trailing, 200)
                            .fixedSize()
                        
                        Text(currentSong.artist)
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                            .colorInvert()
                            .frame(alignment: .trailing)
                            .padding(.trailing, 200.0)
                            .padding(.bottom, 10.0)
                            .fixedSize()
                    }
                    
                    HStack{
                        Image(systemName: "shuffle")
                            .padding(.trailing)
                            .font(.system(size: 30.0))
                            .foregroundColor(.white)
                        Image(systemName: "backward.end.fill")
                            .padding(.horizontal)
                            .font(.system(size: 30.0))
                            .foregroundColor(.white)
                        Image(systemName: "play.fill")
                            .padding(.horizontal)
                            .font(.system(size: 58.0))
                            .foregroundColor(.white)
                        Image(systemName: "forward.end.fill")
                            .padding(.horizontal)
                            .font(.system(size: 30.0))
                            .foregroundColor(.white)
                        Image(systemName: "repeat")
                            .font(.system(size: 30.0))
                            .foregroundColor(.white)
                    }
                    
                }
            }
        }
    }
}

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
                            .frame(width: 200, alignment: .center)
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
                                    
                                    VStack{
                                        Text(item.name)
                                            .accentColor(.white)
                                        //.padding(/*@START_MENU_TOKEN@*/.trailing, 200.0/*@END_MENU_TOKEN@*/)
                                        
                                        Text(item.artist)
                                            .accentColor(.white)
                                        //.padding(/*@START_MENU_TOKEN@*/.trailing, 200.0/*@END_MENU_TOKEN@*/)
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
