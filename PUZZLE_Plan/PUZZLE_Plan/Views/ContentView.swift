//
//  ContentView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/07/31.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dateHolder: DateHolder
    @State var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            CalendarView()
                .tabItem {
                    if selection == 0 {
                        Image("ic_calendar_selected")

                    } else {
                        Image("ic_calendar_op03")
                    }
                }
                .tag(0)

            Text("Another Tab")
                .tabItem {
                    if selection == 1 {
                        Image("ic_plan_selected")
                    } else {
                        Image("ic_plan_op03")
                    }
                }
                .tag(1)

            Text("The Last Tab")
                .tabItem {
                    if selection == 2 {
                        Image("ic_mypage_selected")
                    } else {
                        Image("ic_mypage_op03")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
