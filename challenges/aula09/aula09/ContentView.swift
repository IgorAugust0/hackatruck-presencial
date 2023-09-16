//
//  ContentView.swift
//  aula09
//
//  Created by Student14 on 03/08/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var showingSheet = false
    @State private var currentLocation = (name: "United States of America", flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Flag_of_Washington.svg/255px-Flag_of_Washington.svg.png", description: "Washington")
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 39.86223173133187, longitude: -101.9931248769809), span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60))
    var body: some View {
        VStack{
            Text("USA Map")
                .bold()
                .font(.system(size: 36))
                .multilineTextAlignment(.leading)
            Text(currentLocation.name)
                .bold()
                .font(.system(size: 20))
                .multilineTextAlignment(.leading)
            NavigationView {
                Map(coordinateRegion: $region, annotationItems: locations) {
                    local in
                    MapAnnotation(coordinate: local.coordinate) {
                        Button {
                            showingSheet = true
                        } label: {
                            Label("", systemImage: "pin.circle.fill")
                        }
                        .font(.system(size: 45))
                        .padding(.horizontal, 1)
                        .sheet(isPresented: $showingSheet) {
                            VStack {
                                Text((currentLocation.name))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                    .font(.system(size: 36))
                                AsyncImage(url: URL(string: currentLocation.flag)) { phase in
                                    if let image = phase.image {
                                        image.resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                    } else if phase.error != nil {
                                        Color.white // Indicates an error
                                    } else {
                                        Color.white // Acts as a placeholder
                                    }
                                }
                                Text((currentLocation.description))
                                    .multilineTextAlignment(.center)
                            }
                        }
                    }
                }
                
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(locations) { local in
                        Button(local.name) {
                            region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: local.coordinate.latitude, longitude: local.coordinate.longitude),
                                span: MKCoordinateSpan(latitudeDelta: 0.75, longitudeDelta: 0.75)
                            )
                            currentLocation.name = local.name
                            currentLocation.flag = local.flag
                            currentLocation.description = local.description
                        }.buttonStyle(.borderedProminent)
                    }
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
