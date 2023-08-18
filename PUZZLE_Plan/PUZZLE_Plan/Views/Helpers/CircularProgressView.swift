//
//  CircularProgressView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/17.
//

import SwiftUI

struct CircularProgressView: View {
    let progressGauge: Double

    var body: some View {
        ZStack() {
            ZStack {
                Circle()
                    .fill(
                        .shadow(.inner(color: Color.black, radius: 4, x: 2, y: 2)).opacity(0.15)
                    )
                    .foregroundColor(Color.white)
                Circle()
                    .trim(from: 0, to: progressGauge)
                    .stroke(
                        Color.progressPoint,
                        style: StrokeStyle(
                            lineWidth: 2,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut, value: progressGauge)
            }
            .frame(width: 39, height: 39)
            Image("im_puzzle_point")
                .resizable()
                .frame(width: 24, height: 24)
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(progressGauge: 0.4)
    }
}
