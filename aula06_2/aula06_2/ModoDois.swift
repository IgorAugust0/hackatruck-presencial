//
//  ModoDois.swift
//  aula06_2
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct ModoDois: View {
    @State var texto: String = ""
    var body: some View {
        VStack {
            TextField("Digite aqui: ", text: $texto)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            Text("Estamos percorrendo um caminho \(texto)")
            NavigationLink("Acessar Tela") {
                ModoDoisDentro(texto: texto)
            }
        }
    }
}

struct ModoDois_Previews: PreviewProvider {
    static var previews: some View {
        ModoDois()
    }
}
