//
//  ContentView.swift
//  ListSwiftUI
//
//  Created by naresh kukkala on 27/04/22.
//

import SwiftUI

struct ContentView: View {
    let names = ["Alex", "John", "Mary", "Steven"]
    
    var body: some View {
        List(names, id: \.self) { name in
            Text(name)
        }
        
//        List(1...100, id: \.self) { index in
//            Text("\(index)")
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
