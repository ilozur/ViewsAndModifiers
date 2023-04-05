//
//  Overview.swift
//  ViewsAndModifiers
//
//  Created by Edmond Podlegaev on 05.04.2023.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) {
            print(type(of: self.body))
        }
            .padding()
            .background(.red)
            .padding()
            .background(.orange)
            .padding()
            .background(.yellow)
            .padding()
            .background(.green)
            .padding()
            .background(.cyan)
            .padding()
            .background(.blue)
            .padding()
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.primary)
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
