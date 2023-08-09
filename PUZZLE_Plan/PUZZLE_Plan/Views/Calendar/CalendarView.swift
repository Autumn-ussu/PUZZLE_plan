//
//  CalendarView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/07/31.
//

import SwiftUI

struct CalendarView: View {
    @EnvironmentObject var dateHolder: DateHolder

    var body: some View {
        VStack(spacing: 1)
        {
            /// 상단 메시지
            VStack(alignment: .leading){
                Text("PUZZLE")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))

                Text("종원님의 8월엔")
                    .font(.system(size: 22))
                Text("어떤 모양의 조각들이 있나요?")
                    .font(.system(size: 22))
            }
            .overlay(){
                Image("im_puzzle_01")
                    .padding(EdgeInsets(top: 35, leading: 73, bottom: 0, trailing:     0))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: 24, bottom: 16, trailing: 0))

            /// 달력 부분
            ZStack(){RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .frame(width: 342, height: 536)
                VStack(){
                    DateScrollerView()
                        .environmentObject(dateHolder)
                    dayOfWeekStack
                    calendarGrid
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.bgNormal)
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
        .frame(width: 300, alignment: .center)
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
        .frame(width: 300, height: 400, alignment: .center)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}

extension Text{
    func dayOfWeek() -> some View{
        self.frame(maxWidth: .infinity)
            .padding(.top, 1)
            .lineLimit(1)
    }
}
