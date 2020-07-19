//
//  ContentView.swift
//  SwfitUICalculators
//
//  Created by HANG GAO on 2020/07/11.
//

import SwiftUI

// a wrapper of row of button
struct CalculatorButtonRow: View {
    let row: [CalculatorButtonItem]
    var body: some View {
        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(title: item.title, size: item.size, backgroundColor: item.backgroundColor, action: {print("hellO")} )
            }
        }
    }
}

// most low view
struct CalculatorButton: View {
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.white)
                .frame(width: size.width, height: size.height)
                .background(backgroundColor)
                .cornerRadius(size.width / 2)
        }
    }
}

struct ContentView: View {
    var body: some View {
        CalculatorButtonRow(row: [.digit(1), .digit(2), .digit(3), .op(.plus)])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

