//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Edmond Podlegaev on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var useRedText = false
    
    var body: some View {
        if useRedText {
            Button("Hello, world!") {
                useRedText.toggle()
            }
            .foregroundColor(.red)
        } else {
            Button("Hello, world!") {
                useRedText.toggle()
            }
            .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
