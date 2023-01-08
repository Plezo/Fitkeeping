//
//  ContentView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var page: String = "Dashboard"
    
    var body: some View {
        NavigationStack {
            VStack() {
                Header(page: $page) // TODO: Think theres a better way of doing a header
                
                Tabs(page: $page)
            }
            .background(Color.bgBlack)
        }
        .tint(Color.whiteText)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
