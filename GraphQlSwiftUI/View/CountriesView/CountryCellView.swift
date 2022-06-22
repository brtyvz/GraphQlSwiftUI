//
//  CountriesView.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 15.06.2022.
//

import SwiftUI
import Kingfisher
struct CountryCellView: View {
  
    let country : CountriesResponseDTO

    
    init(country:CountriesResponseDTO) {
        self.country = country
        
    }
    var body: some View {
        ZStack{
            VStack(alignment:.leading){
                Text(country.name.capitalized)
                    .font(.title).bold()
                    .padding(.horizontal,16)
                    .padding(.vertical,8)
                    .foregroundColor(.white)
                    .frame(width:420, height:40)
                HStack{
                    
                    Text("+\(country.phone)")
                        .bold()
                        .frame(width: 60, height:20, alignment: .center)
                        .padding(.leading)
                        .foregroundColor(.white)
    
                    Text(country.capital)
                        .font(.subheadline).bold()
                        .padding(.horizontal,16)
                        .padding(.vertical,8)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width:250, height:30)
                    Text(country.emoji) .font(.system(size: 50))
                }
                
            }
        }
        .padding(.trailing,-10)
        .padding(.leading,-10)
        
        .background(.blue)
        
            .cornerRadius(12)
            .shadow(color: .blue, radius: 6, x: 0, y: 0)
    }
}


//struct CountriesView_Previews: PreviewProvider {
//    static var previews: some View {
//        CountriesView()
//    }
//}
