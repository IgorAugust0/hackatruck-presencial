//
//  ContentView.swift
//  teste
//
//  Created by Student14 on 27/07/23.
//

import SwiftUI

struct D3: View {
    @State private var texto: String = ""
    @State var showingAlert = false
    
    var body: some View {
        ZStack {
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .saturation(0.5)
                .blur(radius: 0)
                // .frame(width: 700, height: 1000)
                .opacity(0.2)
            
            
            VStack {
                Text("Bem vindo, \(texto)").font(.largeTitle)
                TextField("Digite aqui: ", text: $texto)
                    .font(.title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                    
                    Image("truck")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                }
                
                Spacer()
                
                Button("Entrar") {
                    showingAlert = true
                }
                .alert(isPresented:$showingAlert) {
                    Alert(title: Text("ALERTA !"),
                          message: Text("Você irá iniciar o desafio de aula agora"),
                          dismissButton: .default(Text("Vamos lá"))
                    )
                }
            }
        }
        
    }
}

struct D3_Previews: PreviewProvider {
    static var previews: some View {
        D3()
    }
}
