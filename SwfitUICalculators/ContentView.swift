//
//  ContentView.swift
//  SwfitUICalculators
//
//  Created by HANG GAO on 2020/07/11.
//

import SwiftUI


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
    let row: [CalculatorButtonItem] = [.digit(1), .digit(2), .digit(3), .op(.plus)]
    
    var body: some View {
        
        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(title: item.title, size: item.size, backgroundColor: item.backgroundColor, action: {print("hellO")} )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

