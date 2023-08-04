////
////  DetalheView.swift
////  aula07
////
////  Created by Student14 on 01/08/23.
////
//
import SwiftUI

struct DetalheView: View {
    @State var currentSong: Song
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
                            .font(.system(size: 24, weight: .semibold))
                        Text(currentSong.artist)
                    }.foregroundColor(.white)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "shuffle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .padding()
                        Image(systemName: "backward.end.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .padding()
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, alignment: .center)
                            .padding()
                        Image(systemName: "forward.end.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .padding()
                        Image(systemName: "repeat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                            .padding()
                    }
                    .foregroundColor(.white)
                    Spacer()
                }
            }
        }
    }
}
