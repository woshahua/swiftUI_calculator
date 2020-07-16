//
//  ContentView.swift
//  SwfitUICalculators
//
//  Created by HANG GAO on 2020/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button(action: {
                print("button 1")
            }) {
                Text("1")
                    .font(.system(size: 38))
                    .foregroundColor(.white)
                    .frame(width: 88, height: 88)
                    .background(Color.orange)
                    .cornerRadius(44)
            }
            
            Button(action: {
                print("button 2")
            }) {
                Text("2")
                    .font(.system(size: 38))
                    .foregroundColor(.white)
                    .frame(width: 88, height: 88)
                    .background(Color.orange)
                    .cornerRadius(44)
            }
            
            Button(action: {
                print("button 2")
            }) {
                Text("2")
                    .font(.system(size: 38))
                    .foregroundColor(.white)
                    .frame(width: 88, height: 88)
                    .background(Color.orange)
                    .cornerRadius(44)
            }
            
            Button(action: {
                print("button 2")
            }) {
                Text("2")
                    .font(.system(size: 38))
                    .foregroundColor(.white)
                    .frame(width: 88, height: 88)
                    .background(Color.orange)
                    .cornerRadius(44)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
