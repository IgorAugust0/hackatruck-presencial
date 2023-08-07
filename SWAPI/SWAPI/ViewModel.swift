//
//  ViewModel.swift
//  SWAPI
//
//  Created by Student14 on 04/08/23.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var person : [StarWarsCharacter] = []
    
    func fetch(){
        guard let url = URL(string: "https://akabab.github.io/starwars-api/api/all.json" )
        else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([StarWarsCharacter].self, from: data)
                
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
