//
//  PlanContentView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/16.
//

import SwiftUI

struct PlanContentView: View {
    private var plans = PlanAPI.getPlans()
    private var current = 69.0
    private var maxValue = 100.0
    private var minValue = 0.0

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(plans) { plan in
                        Text("\(plan.text)")
                        CircularProgressView(progressGauge: plan.progressGauge)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("PUZZLE")
        }
    }
}

struct PlanContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlanContentView()
    }
}
