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
                .fontWeight(.semibold)
                .font(.system(size: 16))
                .bold()
                .animation(.none)
                .frame(maxWidth: 310, alignment: .leading)
            Button(action: previousMonth)
            {
                Image("ic_arrow_left_line")
                    .imageScale(.small)
                    .font(Font.title.weight(.semibold))
                    .foregroundColor(Color.black)
            }
            Button(action: nextMonth)
            {
                Image("ic_arrow_right_line")
                    .imageScale(.small)
                    .font(Font.title.weight(.semibold))
                    .foregroundColor(Color.black)
            }
        }
        .frame(maxWidth: 310, alignment: .leading)
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
