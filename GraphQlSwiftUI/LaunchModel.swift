//import Foundation
//typealias CountryData = FetchCountriesQuery.Data
//
//struct Countries: Decodable {
//    var countries: [Country]
//
////    init(_ countries: CountryData?) {
////        self.countries = countries?.countries.map({ country -> Country in
////            Country(country)
////        }) ?? []
////    }
//
//    struct Country: Identifiable, Decodable {
//        var code : String
//        var name: String
//        var emoji: String
//        var capital : String
//
//  init(_ country: CountryData.Country?) {
//      self.code = country?.name ?? ""
//            self.name = country?.name ?? ""
//            self.emoji = country?.emoji ?? ""
//            self.capital = country?.capital ?? ""
//        }
//    }
//}
