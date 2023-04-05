//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Edmond Podlegaev on 05.04.2023.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Color.blue
                .frame(width: 300, height: 300)
                .watermarked(with: "podlegaev.com")
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(50)
                .shadow(color: .blue, radius: 10)
                
            Text("Hello, world!")
                .modifier(Title())
            Text("Goodbye, friend!")
                .titleStyle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
