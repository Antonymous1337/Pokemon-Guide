//
//  TypeTabView.swift
//  Pokemon Guide
//
//  Created by Antony Holshouser on 11/10/24.
//

import SwiftUI

struct TypeTabView: View {
    var color: String
    var symbol: String
    var type: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(stringToColor())
                .frame(height: 50)
                .clipShape(.rect(cornerRadius: 15))
            HStack {
                Image(systemName: symbol)
                Text(type)
                    .bold()
            }
            .foregroundStyle(.black)
        }
    }
    
    func stringToColor() -> Color {
        switch color {
        case "yellow":
            return .yellow
        case "green":
            return .green
        case "red":
            return .red
        case "blue":
            return .blue
        default:
            return .black
        }
    }
    
}

#Preview {
    TypeTabView(color: "yellow", symbol: "bolt.circle", type: "Electric")
}
