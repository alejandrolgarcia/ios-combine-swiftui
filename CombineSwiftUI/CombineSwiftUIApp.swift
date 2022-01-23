//
//  CombineSwiftUIApp.swift
//  CombineSwiftUI
//
//  Created by Luis Garcia on 22/01/22.
//

import SwiftUI

@main
struct CombineSwiftUIApp: App {
    
    var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
