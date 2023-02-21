//
//  TouchDownSwiftUIApp.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 13.02.2023.
//

import SwiftUI

@main
struct TouchDownSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
