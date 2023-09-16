//
//  SheetView.swift
//  aula06_2
//
//  Created by Student14 on 31/07/23.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            VStack {
                Text("Igor")
                Text("Augusto")
                Text("hackatruck.com.br")
                Text("")
            }
            Button("voltar"){
                dismiss()
            }
            .font(.body)
            .padding()
        }

    }
}


struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
