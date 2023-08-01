//
//  ContentView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/07/31.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dateHolder: DateHolder

    var body: some View {
        VStack(spacing: 1)
        {
            DateScrollerView()
                .environmentObject(dateHolder)
                .padding()
            dayOfWeekStack
            calendarGrid
        }
    }
    var dayOfWeekStack: some View{
        HStack(spacing: 1){
            Text("일").dayOfWeek()
            Text("월").dayOfWeek()
            Text("화").dayOfWeek()
            Text("수").dayOfWeek()
            Text("목").dayOfWeek()
            Text("금").dayOfWeek()
            Text("토").dayOfWeek()
        }
    }
    var calendarGrid: some View{
        VStack(spacing: 1){
            let daysInMonth = CalendarHelper().daysInMonth(dateHolder.date)
            let firstDayOfMonth = CalendarHelper().firstOfMonth(dateHolder.date)
            let startingSpaces = CalendarHelper().weekDay(firstDayOfMonth)
            let prevMonth = CalendarHelper().minusMonth(dateHolder.date)
            let daysInPrevMonth = CalendarHelper().daysInMonth(prevMonth)
            ForEach(0..<6)
            {
                row in
                HStack(spacing: 1){
                    ForEach(1..<8){
                        column in
                        let count = column + (row * 7)
                        CalendarCell(count: count, startingSpaces: startingSpaces, daysInMonth: daysInMonth, daysInPrevMonth: daysInPrevMonth)
                            .environmentObject(dateHolder)
                    }
                }
            }
        }
        .frame(maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Text{
    func dayOfWeek() -> some View{
        self.frame(maxWidth: .infinity)
            .padding(.top, 1)
            .lineLimit(1)
    }
}
