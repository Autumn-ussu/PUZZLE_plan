//
//  PlanAPI.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/16.
//

import Foundation
/// 목업 API

class PlanAPI {
    static func getPlans() -> [Plan] {
        return [Plan(text: "안녕하세요", progressGauge: 0.0),Plan(text: "안녕하세요", progressGauge: 0.5),Plan(text: "안녕하세요", progressGauge: 1.0)]
    }
}
