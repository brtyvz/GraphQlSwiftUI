//
//  CountryRequest.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 15.06.2022.
//

import Foundation
public struct CountryRequestDTO {
    let countryId: String
    init(countryId: String) {
        self.countryId = countryId
    }
}
