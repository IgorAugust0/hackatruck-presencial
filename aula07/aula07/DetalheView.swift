////
////  DetalheView.swift
////  aula07
////
////  Created by Student14 on 01/08/23.
////
//

import Foundation
import SwiftUI
import AVFoundation

struct DetalheView: View {
    @State var currentSong: Song
    @State var player: AVAudioPlayer!
    var body: some View {
        ZStack{
            LinearGradient(colors: [.gray, .black], startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
            VStack{
                // Spacer()
                ScrollView{ // remove?
                    AsyncImage(url: URL(string: currentSong.cover)!) { image in
                        image
                            .resizable()
                            // .scaledToFit()
                            .aspectRatio(1.0, contentMode: .fit)
                            .frame(width: 300, height: 300, alignment: .center)
                            .clipped()
                            .aspectRatio(contentMode: .fit)
                    }placeholder: {
                        Image(systemName: "photo.fill")
                        // Color.gray
                    }
                    .padding(.bottom, 80.0).frame(width: 70, alignment: .center)
                    // .frame(width: 250, height: 250)
                    VStack{
                        Text(currentSong.name)
                            .font(.system(size: 24, weight: .semibold))
                        Text(currentSong.artist)
                    }.foregroundColor(.white)
                    
                    Spacer()
                    
                    // Player Buttons
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

                    Button(action: {
                        print("oi")
                        playSound()
                        
                    }){
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, alignment: .center)
                            .padding()
                    }
                    
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

    // func playSound(){
        
    //     let url = Bundle.main.url(forResource: "", withExtension: "")
    //     guard url != nil  else {
    //         return
    //     }
        
    //     do {
    //         print(url)
    //         player = try AVAudioPlayer(contentsOf: url!)
    //         player?.play()
    //     } catch {
    //         print("\(error)")
    //     }
    // }
}

// struct DetalheView_Previews: PreviewProvider {
//     static var previews: some View {
//         DetalheView(currentSong: Song(id: 1, name: "", artist: "", cover: ""))
//     }
// }
