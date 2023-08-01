//
//  DateScrollerView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/01.
//

import SwiftUI

struct DateScrollerView: View {
    @EnvironmentObject var dateHolder: DateHolder

    var body: some View {
        HStack{
            Text(CalendarHelper().monthYearString(dateHolder.date))
                .font(.title)
                .bold()
                .animation(.none)
                .frame(maxWidth: .infinity)
            Spacer()
            Button(action: previousMonth)
            {
                Image(systemName: "arrow.left")
                    .imageScale(.small)
                    .font(Font.title.weight(.semibold))
            }
            Button(action: nextMonth)
            {
                Image(systemName: "arrow.right")
                    .imageScale(.small)
                    .font(Font.title.weight(.semibold))
            }
            Spacer()
        }
    }

    func previousMonth()
    {
        dateHolder.date = CalendarHelper().minusMonth(dateHolder.date)
    }
    func nextMonth()
    {
        dateHolder.date = CalendarHelper().plusMonth(dateHolder.date)
    }
}

struct DateScrollerView_Previews: PreviewProvider {
    static var previews: some View {
        DateScrollerView()
    }
}
