//
//  PlanCollectionView.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/16.
//

import SwiftUI

struct PlanCollectionView: View {

    @State var colors: [Color] = [.pink, .red, .orange, .yellow, .green, .blue, .purple, .gray, .black]
    @State var texts: [String] = ["안녕하세요","안녕하세요","안녕하세요","안녕하세요","안녕하세요","안녕하세요","안녕하세요","안녕하세요","안녕하세요"]


    var body: some View {
        Collection(data: $colors, cols: 1, spacing: 20, texts: texts) { color in
            HStack {
                Text(texts[1])
                    .font(.system(size: 16))
                    .padding(10)
                    .frame(width: 200)
                    .frame(minHeight: 0, maxHeight: .infinity)
                    .background(Color.white)
                Spacer()
                Text(color.description)
                    .font(.system(size: 16))
                    .padding(10)
                    .frame(width: 100)
                    .frame(minHeight: 0, maxHeight: .infinity)
                    .background(Color.white)
            }
            .frame(height: 82)
            .background(color)
            .cornerRadius(10)
        }
        .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
    }

}
