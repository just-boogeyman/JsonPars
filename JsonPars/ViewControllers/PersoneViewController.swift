//
//  PersoneViewController.swift
//  JsonPars
//
//  Created by Ярослав Кочкин on 13.12.2022.
//

import Foundation
import UIKit

enum RickAndMorty: String {
    case rickSanchez = "https://rickandmortyapi.com/api/character/1"
    case mortySmith = "https://rickandmortyapi.com/api/character/2"
    case summerSmith = "https://rickandmortyapi.com/api/character/3"
}


class PersoneViewController: UIViewController {
    
    @IBAction func parsTupped() {
        guard let url = URL(string: RickAndMorty.rickSanchez.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let persone = try JSONDecoder().decode(Persone.self, from: data)
                print(persone)
            } catch {
                print(error)
            }
        }.resume()
    }
}
