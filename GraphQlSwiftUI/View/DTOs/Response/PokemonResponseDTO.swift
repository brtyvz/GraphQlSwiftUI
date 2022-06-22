//
//  PokemonResponseDTO.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 21.06.2022.
//

import Foundation
import SwiftUI
struct PokemonResponseDTO:Decodable,Identifiable{
        let id : Int
        let name : String
        let imageUrl : String
        let type :String
        let description : String
        let attack: Int
        let defense:Int
        let height:Int
        let weight:Int
}
let MOCK_POKEMON : [PokemonResponseDTO] = [
    .init(id: 0, name: "balbasar", imageUrl: "1", type: "poison",description: "bla",attack: 44,defense: 22,height: 23,weight: 44)
]
