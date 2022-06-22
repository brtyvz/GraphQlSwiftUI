//
//  TabBarView.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 17.06.2022.
//

import SwiftUI

struct TabBarView: View {
    @ObservedObject var viewModel = LaunchViewModel()
    var body: some View {
        TabView {
            
            CountriesView(countryList: viewModel.countryList).tabItem {
                Image(systemName: "flag")
                    Text("Countries")
            }
            PokedexView().tabItem {
                Image(systemName: "apps.iphone")
                Text("Pokedex")
            }
            
        }
  
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
