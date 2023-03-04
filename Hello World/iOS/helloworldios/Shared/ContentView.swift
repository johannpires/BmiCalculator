//
//  ContentView.swift
//  Shared
//
//  Created by Johann Pires on 15/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewLayout(.device)
        }
    }
}



