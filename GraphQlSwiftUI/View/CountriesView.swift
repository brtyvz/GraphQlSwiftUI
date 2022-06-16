//
//  CountryCellView.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 15.06.2022.
//

import SwiftUI

struct CountryCellView: View {
       @State var searchText = ""
    private let gridItem = [GridItem(.flexible())]
    @ObservedObject var viewModel = LaunchViewModel()
    var body: some View {
        NavigationView {
            ScrollView{
     LazyVGrid(columns:gridItem ,spacing: 22 ){
                ForEach(viewModel.countryList.filter({$0.name.contains(searchText.lowercased())||searchText.isEmpty })){ country in
                    
                    NavigationLink {
                        
                    } label: {
                        CountriesView(country: country, viewModel: viewModel)
                    }
                    
                }
                
            }
            }
            .searchable(text: $searchText)
                    .navigationTitle("Pokedex")
        }
    }
}
struct CountryCellView_Previews: PreviewProvider {
    static var previews: some View {
        CountryCellView()
    }
}
