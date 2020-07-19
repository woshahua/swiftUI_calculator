//
//  CalculatorButtonModel.swift
//  SwfitUICalculators
//
//  Created by HANG GAO on 2020/07/19.
//
import Foundation
import SwiftUI

enum CalculatorButtonItem: {
    
    enum Op: String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multiply = "x"
        case equal = "="
    }
    
    enum Command: String {
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorButtonItem {
    var title: String {
        switch self {
        case .digit(let value): return String(value)
        case .dot: return "."
        case .op(let op): return op.rawValue
        case .command(let command): return command.rawValue
        }
    }
    
    var size: CGSize {
        CGSize(width: 88, height: 88)
    }
    
    var backgroundColor: Color {
        switch self {
        case .digit, .dot: return Color.orange
        case .op: return Color.black
        case .command: return Color.blue
            
        }
    }
}

extension CalculatorButtonItem: Hashable {}
