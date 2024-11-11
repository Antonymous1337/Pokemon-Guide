//
//  ContentView.swift
//  Pokemon Guide
//
//  Created by Antony Holshouser on 11/10/24.
//

import SwiftUI

struct TypeView: View {
    @State var types = [PokemonType]()
    let dataServer = DataServer()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Categories")
                    .font(.largeTitle)
                    .bold()
                
                ForEach(types) { type in
                    NavigationLink {
                        PokemonView(pokemons: type.pokemon, type: type.type)
                    } label: {
                        TypeTabView(color: type.color, symbol: type.icon,type: type.type)
                    }
                }
                
                Spacer()
            }
        }
        .padding(.horizontal)
        .foregroundStyle(.black)
        .onAppear {
            types = dataServer.getFileData()
        }
    }
}

#Preview {
    TypeView()
}
