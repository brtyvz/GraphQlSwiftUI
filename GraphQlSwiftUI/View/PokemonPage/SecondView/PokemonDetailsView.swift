//
//  PokemonDetailsView.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 21.06.2022.
//


import SwiftUI

import Kingfisher
struct PokemonDetailsView: View {
    let pokemon : PokemonResponseDTO
    let viewModel : PokemonViewModel
    let backgroundColor : Color
  
    init (pokemon:PokemonResponseDTO,viewModel:PokemonViewModel){
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.backgroundColor = Color(viewModel.backgroundColor(forType: pokemon.type))

    }
    var body: some View {
        VStack(alignment: .center){
            Section{
                ZStack{
                    
                    KFImage(URL(string: pokemon.imageUrl)).resizable().padding(.top,5).frame(width: 180, height: 180).offset( y: -70)
                        .scaledToFit()
                        .frame(width: 440, height: 178).foregroundColor(.white)

                    
                    
                }.background(Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.50))
             
                
            }
        
            Text(pokemon.name.capitalized).padding().font(.title)
            ZStack{            Text(pokemon.type)
                    .font(.subheadline).bold()
                    .padding(.horizontal,16)
                    .padding(.vertical,8)
                    .foregroundColor(.black)
                    .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color( viewModel.backgroundColor(forType: pokemon.type)).opacity(0.50))
                    )
                    .frame(width: 100, height:24)}
           
            Spacer()
            
            Text(pokemon.description) .minimumScaleFactor(0.2).padding(.leading,5)
            Spacer()
            Spacer()
            
//             Text("Stats").padding(.bottom).font(.title)
            
            Section(header:Text("Stats").font(.title).foregroundColor(Color(viewModel.backgroundColor(forType: pokemon.type)).opacity(0.90))) {
                Text("Attack: \(pokemon.attack)")
                Text("Defense: \(pokemon.defense)")
                Text("Weight: \(pokemon.weight)")
                Text("Height: \(pokemon.height)")
            }.padding(.bottom).foregroundColor(.black)
            
          
            }
       
        
    }
}
