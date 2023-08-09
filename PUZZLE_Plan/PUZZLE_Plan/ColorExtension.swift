//
//  ColorExtension.swift
//  PUZZLE_Plan
//
//  Created by JW on 2023/08/02.
//

import SwiftUI

extension Color {
    static let bgNormal = Color(hex: "#F6F6F6")
    static let buttonPoint = Color(hex: "#FF7E62")
}

extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")

    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)

    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}
