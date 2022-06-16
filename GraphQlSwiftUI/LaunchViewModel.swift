//
//  LaunchViewModel.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 15.06.2022.
//

import Foundation
import Apollo
import SwiftUI
class LaunchViewModel : ObservableObject {
    //model
    @Published var countryList : [CountriesResponseDTO] = []
    init(){
        fetch()
    }
    func fetch(){
        Network.shared.apollo.fetch(query: FetchCountriesQuery()) { result in
            switch result {
            case.success(let graphQLResult):
                guard let countries = graphQLResult.data?.countries else{return}
                for country in countries { 
                    let countryModel =  CountriesResponseDTO(name: country.name, capital: country.capital ?? "", emoji: country.emoji, phone:country.phone)
                    self.countryList.append(countryModel)
                    
                }
                print("success\(graphQLResult)")
            case .failure(let error):
                print(error)
            }
        }
       
    }
}
