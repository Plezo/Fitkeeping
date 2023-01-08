//
//  Tabs.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/21/22.
//

import SwiftUI

struct Tabs: View {
    @Binding var page: String
    
    var body: some View {
        TabView(selection: $page) {
            DashboardView()
                .tabItem {
                    Image(systemName: "dumbbell")
                    Text("Dashboard")
                }
                .tag("Dashboard")
            
            DashboardView()
                .tabItem {
                    Image(systemName: "person.crop.circle.dashed")
                    Text("Profile")
                }
                .tag("Profile")
        }.tint(Color.whiteText)
    }
}
