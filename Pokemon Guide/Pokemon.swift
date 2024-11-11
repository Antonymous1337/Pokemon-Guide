//
//  Pokemon.swift
//  Pokemon Guide
//
//  Created by Antony Holshouser on 11/10/24.
//

import Foundation

struct Pokemon: Identifiable, Decodable {
    let id = UUID()
    
    var name: String
    var about: String
    var hp: Int
    var atk: Int
    var def: Int
    var spatk: Int
    var spdef: Int
    var spd: Int
    var image: String
}