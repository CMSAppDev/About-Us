//
//  AustinView.swift
//  About Us
//
//  Created by Daniel Jaye Poe (Student) on 3/25/22.
//

import SwiftUI

struct AustinView: View {
    @State private var number: Int = 0
    @State private var angle: Double = 0
    @State private var scale: CGFloat = 1
    @State private var xPosition: CGFloat = 0
    @State private var yPosition: CGFloat = 0
    var body: some View {
        Button(action : {
            number = .random(in: 1...8)
            if number == 1 {
                angle += 90
            } else if number == 2 {
                angle -= 90
            } else if number == 3 {
                scale += 0.5
            } else if number == 4 {
                scale -= 0.5
            } else if number == 5 {
                xPosition += 50
            } else if number == 6 {
                xPosition -= 50
            } else if number == 7 {
                yPosition += 50
            } else if number == 8 {
                yPosition -= 50
            }
        }) {
            Image("Austin Face")
        }
        .buttonStyle(PlainButtonStyle())
        .rotationEffect(.degrees(angle))
        .animation(.easeIn, value: angle)
        .scaleEffect(scale)
        .animation(.linear(duration: 1), value: scale)
        .offset(x: xPosition, y: yPosition)
        .animation(.easeIn, value: xPosition)
        .animation(.easeIn, value: yPosition)
    }
}

struct AustinView_Previews: PreviewProvider {
    static var previews: some View {
        AustinView()
    }
}
