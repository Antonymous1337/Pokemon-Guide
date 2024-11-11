//
//  DetailView.swift
//  Pokemon Guide
//
//  Created by Antony Holshouser on 11/10/24.
//

import SwiftUI

struct DetailView: View {
    var pokemon:Pokemon
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size.width/2
            ScrollView {
                VStack(alignment: .leading) {
                    Text(pokemon.name)
                        .font(.largeTitle)
                        .bold()
                    
                    HStack {
                        Image(pokemon.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: size)
                        VStack(alignment: .leading) {
                            Text("Stats")
                                .bold()
                                .padding(.bottom, 8)
                            
                            Text("HP: \(pokemon.hp)")
                            Text("Attack: \(pokemon.atk)")
                            Text("Defense: \(pokemon.def)")
                            Text("Special Attack: \(pokemon.spatk)")
                            Text("Special Defense: \(pokemon.spdef)")
                            Text("Speed: \(pokemon.spd)")
                            
                            Spacer()
                        }
                    }
                    
                    Text(pokemon.about)
                }
            }
            .scrollIndicators(.hidden)
            .padding(.horizontal)
        }
    }
}

#Preview {
    DetailView(pokemon: DataServer().getFileData()[0].pokemon[0])
}
