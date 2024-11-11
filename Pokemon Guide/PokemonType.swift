//
//  PokemonType.swift
//  Pokemon Guide
//
//  Created by Antony Holshouser on 11/10/24.
//

import Foundation

struct PokemonType: Identifiable, Decodable {
    let id = UUID()
    
    var type: String
    var icon: String
    var color: String
    var pokemon:[Pokemon]
}
