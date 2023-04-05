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
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
                .blur(radius: 10)
                .foregroundColor(.red)
            Text("Hufflepuff")
                .foregroundColor(.yellow)
            Text("Ravenclaw")
                .foregroundColor(.blue)
            Text("Slytherin")
                .foregroundColor(.green)
        }
        .font(.title)
        .blur(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
