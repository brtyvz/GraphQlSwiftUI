//
//  CountryCellView.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 15.06.2022.
//

import SwiftUI

struct CountriesView: View {
       @State private var searchText = ""
    private let gridItem = [GridItem(.flexible())]
//    @ObservedObject var viewModel = LaunchViewModel()
    var countryList : [CountriesResponseDTO] = []
    var body: some View {
        NavigationView {
            ScrollView{
     LazyVGrid(columns:gridItem ,spacing: 22 ){
                ForEach(countryList.filter({$0.name.contains(searchText)||searchText.isEmpty })){ country in
                    
                    NavigationLink {
                        CountryDetailView(country: country)
                        
                    } label: {
                        CountryCellView(country: country)
                    }
                    
                }
                
            }
            }
            .searchable(text: $searchText)
                    .navigationTitle("Countries")
        }
    }

}
//struct CountryCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        CountryCellView()
//    }
//}
