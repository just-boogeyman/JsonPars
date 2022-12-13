//
//  Person.swift
//  JsonPars
//
//  Created by Ярослав Кочкин on 13.12.2022.
//


struct Persone: Decodable {
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let location: Location
    let image: String
    let episode: [String]
}

struct Location: Decodable {
    
    let name: String
    let url: String
}
