//
//  CountriesResponseDTO.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 15.06.2022.
//

import Foundation
public struct CountriesResponseDTO : Identifiable{
    public var id : String{
        self.name
    }
    public let name : String
    public let capital : String
    public let emoji : String
    public let phone : String
    public let currency : String
    
    init (name: String, capital:String, emoji:String,phone: String, currency: String ) {
        self.name = name
        self.capital = capital
        self.emoji = emoji
        self.phone = phone
        self.currency = currency
    }
}
