//
//  ContentView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var page: String = "Profile"
    
    var body: some View {
        VStack() {
            HeaderView(page: $page)
            
            DashboardView()
            
            FooterView(page: $page)
        }
        .background(Color.bgBlack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
