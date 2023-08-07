//
//  ViewModel.swift
//  SWAPI
//
//  Created by Student14 on 04/08/23.
//

import Foundation
//https://akabab.github.io/starwars-api/api/all.json
//https://hp-api.onrender.com/api/characters/house/gryffindor

class ViewModel : ObservableObject {
//    @Published var person : [StarWarsCharacter] = []
    @Published var person : [HaPo] = []
    
    func fetch(){
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor" )
        else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([HaPo].self, from: data)
                
                DispatchQueue.main.async {
                    self?.person = parsed
                }
            } catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
