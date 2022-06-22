//
//  CountryDetailView.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 16.06.2022.
//

import SwiftUI

struct CountryDetailView: View {
    let country : CountriesResponseDTO
  
    
    init(country:CountriesResponseDTO) {
        self.country = country
   
    }
    var body: some View {
        VStack(alignment: .center) {
            Text(country.emoji).font(.system(size: 300)).frame(width: 300, height: 200).padding(.bottom,200)
            HStack{
                Text("Name:").foregroundColor(.black).font(.title)
                Text(country.name).font(.title).padding().foregroundColor(.blue)
            }
            HStack{
                Text("Capital:").foregroundColor(.black).font(.title)
                Text(country.capital).font(.title).foregroundColor(.blue).padding()
            }

            HStack{
                Text("Currency:").foregroundColor(.black).font(.title)
                Text(country.currency).font(.title).padding().foregroundColor(.blue)
            }

        }
    }
}

//struct CountryDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CountryDetailView()
//    }
//}
