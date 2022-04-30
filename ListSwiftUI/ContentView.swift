//
//  ContentView.swift
//  ListSwiftUI
//
//  Created by naresh kukkala on 27/04/22.
//

import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    
    let friends = [Friend(name: "John"), Friend(name: "Mary"), Friend(name: "Steven")]
    
//    let names = ["Alex", "John", "Mary", "Steven"]
    
    var body: some View {
        List(friends.indices) { index in
            let friend = friends[index]
            HStack {
                Text("\(index + 1)")
                Text(friend.name)
            }
        }
//        List(names, id: \.self) { name in
//            Text(name)
//        }
        
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
