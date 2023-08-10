//
//  ContentView.swift
//  ParkingLot
//
//  Created by Student14 on 09/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack {
                // Background Image
                AsyncImage(url: URL(string: "https://images.pexels.com/photos/1756957/pexels-photo-1756957.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"), content: {
                    image in image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }, placeholder: {
                    ProgressView()
                })
                .ignoresSafeArea()
                .frame(width: 399, height: 250)
                
                ScrollView {
                    ForEach(viewModel.parlot, id: \.self) { parkingLot in
                        NavigationLink(destination: CarView(cars: parkingLot)) {
                            VStack {
                                ForEach(parkingLot.car, id: \.self) { car in
                                    AsyncImage(url: URL(string: car.image ?? ""), content: {
                                        image in image
                                            .resizable()
                                            .scaledToFill()
                                    }, placeholder: {
                                        ProgressView()
                                    }).frame(width: 90, height: 90)
                                        .background(Color.gray)
                                        .clipShape(Circle())
                                        .padding(10)
                                    Text(car.model)
                                    
                                }
                                Spacer()
                            }
                        }
                    }
                }
            }
            .foregroundColor(.white)
            .ignoresSafeArea()
            .background(Color("bg_scroll"))
            
        }
        .preferredColorScheme(.light)
        .tint(.white)
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
