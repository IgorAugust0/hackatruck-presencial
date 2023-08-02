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
            }.background(LinearGradient(gradient: Gradient(colors: [.gray, .black]), startPoint: .top, endPoint: .center))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
