//
//  GraphQlSwiftUIApp.swift
//  GraphQlSwiftUI
//
//  Created by Berat Yavuz on 14.06.2022.
//

import SwiftUI

@main
struct GraphQlSwiftUIApp: App {
    @StateObject var launchViewModel = LaunchViewModel()
    var body: some Scene {
        WindowGroup {
            
            TabBarView(viewModel: launchViewModel)
                .environmentObject(launchViewModel)
        }
    }
}
