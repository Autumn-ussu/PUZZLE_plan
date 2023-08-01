//
//  MonthStruct.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/01.
//

import Foundation

struct MonthStruct
{
    var monthType: MonthType
    var dayInt: Int
    func day() -> String
    {
        return String(dayInt)
    }
}

enum MonthType
{
    case Previous
    case Current
    case Next
}
