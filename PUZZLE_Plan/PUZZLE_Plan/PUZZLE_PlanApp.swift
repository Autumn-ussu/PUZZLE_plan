//
//  PUZZLE_PlanApp.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/07/31.
//

import SwiftUI

@main
struct PUZZLE_PlanApp: App {
    var body: some Scene {
        WindowGroup {
            let dateHolder = DateHolder()
            ContentView()
                .environmentObject(dateHolder)
        }
    }
}
