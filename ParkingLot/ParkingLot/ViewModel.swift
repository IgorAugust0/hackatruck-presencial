//
//  ViewModel.swift
//  ParkingLot
//
//  Created by Student14 on 09/08/23.
//

import Foundation
// http://127.0.0.1:1880/igor

class ViewModel : ObservableObject {
    @Published var parlot : [ParkingLot] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/igor")
        else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([ParkingLot].self, from: data)
                
                DispatchQueue.main.async {
                    self?.parlot = parsed
                }
            } catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
