//
//  PokedexView.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 21.06.2022.
//

import SwiftUI

struct PokedexView: View {
    @State var searchText = ""
    @ObservedObject var viewModel = PokemonViewModel()
    private let gridItem = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                
    
                
                
                LazyVGrid(columns:gridItem ,spacing: 22 ){

                    ForEach(

                        
                        
                        (viewModel.pokemon).filter({$0.name.contains(searchText.lowercased())||searchText.isEmpty })
                    )
                    
                    { pokemon in
                        NavigationLink {
                            PokemonDetailsView(pokemon: pokemon, viewModel: viewModel)
                        } label: {
                            PokemonCellView(pokemon: pokemon, viewModel: viewModel)
                        }

                       
                        
                    }
                    
                }
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Pokedex")
        }
    }
   

    
}
struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
