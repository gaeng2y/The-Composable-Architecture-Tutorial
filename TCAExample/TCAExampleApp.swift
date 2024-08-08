//
//  TCAExampleApp.swift
//  TCAExample
//
//  Created by Kyeongmo Yang on 8/7/24.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCAExampleApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCAExampleApp.store)
        }
    }
}
