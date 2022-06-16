//
//  Network.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 15.06.2022.
//

import Foundation
import Apollo

class Network{
    static let shared = Network()
    let url = "https://countries.trevorblades.com"
    // apollo client
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
    
}
