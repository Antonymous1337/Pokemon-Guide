//
//  DataServer.swift
//  Pokemon Guide
//
//  Created by Antony Holshouser on 11/10/24.
//

import Foundation

struct DataServer {
    func getFileData() -> [PokemonType] {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let pokemonTypes = try decoder.decode([PokemonType].self, from: data)
                    return pokemonTypes
                } catch {
                    print("Couldn't parse JSON: \(error)")
                }
                
            } catch {
                print("Couldn't read file: \(error)")
            }
        }
        
        
        return [PokemonType]()
    }
}
