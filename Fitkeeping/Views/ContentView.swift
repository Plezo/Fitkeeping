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
        VStack() {
            HeaderView(page: $page) // TODO: Think theres a better way of doing a header
            
            Tabs(page: $page)
        }
        .background(Color.bgBlack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
