import SwiftUI

struct D4: View {
    @State private var peso = ""
    @State private var altura = ""
    @State private var imc: Double = 0.0
    @State private var res = ""
    @State private var cor: Color = Color("normal")
    
    func calcular(){
        /*var pesoConv = Float(peso) ?? 0.0
         var alturaConv = Float(altura) ?? 0.0
         imc = pesoConv/pow(alturaConv,2)
         imc = */
        
        guard let pesoConv = Double(peso), let alturaConv = Double(altura), alturaConv > 0 else {
            return
        }
        
        imc = pesoConv / (alturaConv * alturaConv)
        
        switch imc {
        case ..<18.5:
            cor = Color("baixo")
            res = "Baixo Peso"
        case ..<25:
            cor = Color("normal")
            res = "Normal"
        case ..<30:
            cor = Color("sobrepeso")
            res = "SobrePeso"
        default:
            cor = Color("obesidade")
            res = "Obesidade"
        }
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(cor)
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Text("Calculadora de IMC")
                        .font(.system(size: 36, weight: .bold))
                    
                    TextField("Peso em quilogramas", text: $peso)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                        .multilineTextAlignment(.center)
                        .background(.white).padding()
                    
                    TextField("Tamanho em metros", text: $altura)
                        .keyboardType(.decimalPad)
                        .textContentType(.oneTimeCode)
                        .multilineTextAlignment(.center)
                        .background(.white).padding()
                    
                    Button("Calcular") {
                        calcular()
                    }.buttonStyle(.borderedProminent)
                }
                
                Spacer()
                
                Text(res)
                    .foregroundColor(.white)
                    .font(.system(size: 32))
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 10)
            }
        }
    }
}

struct D4_Previews: PreviewProvider {
    static var previews: some View {
        D4()
    }
}
