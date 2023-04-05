//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Edmond Podlegaev on 05.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    var mottoFirst: some View {
        Text("Draco dormiens")
    }
    
    let mottoSecond = Text("nunquam titillandus")
    
    var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    @ViewBuilder var moreSpells: some View {
        Text("Avada-Kedavra")
    }
    
    var body: some View {
        VStack {
            mottoFirst
                .foregroundColor(.red)
            mottoSecond
                .foregroundColor(.blue)
            spells
            moreSpells
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
