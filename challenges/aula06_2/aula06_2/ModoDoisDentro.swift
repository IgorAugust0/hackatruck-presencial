//
//  ModoDoisDentro.swift
//  aula06_2
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct ModoDoisDentro: View {
    @State var texto: String = ""
    var body: some View {
        VStack {
            Text("Volte \(texto) !!")
        }
    }
}


struct ModoDoisDentro_Previews: PreviewProvider {
    static var previews: some View {
        ModoDoisDentro(texto: "oi")
    }
}
