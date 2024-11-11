//
//  PokemonView.swift
//  Pokemon Guide
//
//  Created by Antony Holshouser on 11/10/24.
//

import SwiftUI

struct PokemonView: View {
    @State var pokemons:[Pokemon]
    @State var type:String
    
    var body: some View {
        GeometryReader { proxy in
            NavigationStack {
                VStack (alignment: .leading) {
                    Text(type)
                        .font(.largeTitle)
                        .bold()
                    
                    LazyVGrid(columns: [GridItem(),
                                        GridItem()]) {
                        let size = proxy.size.width/2
                        ForEach(pokemons) { pokemon in
                            NavigationLink {
                                DetailView(pokemon: pokemon)
                            } label: {
                                Image(pokemon.image)
                                    .resizable()
                                    .frame(width: size, height: size)
                            }
                        }
                    }
                    Spacer()
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    PokemonView(pokemons: DataServer().getFileData()[0].pokemon, type: "Electric")
}
