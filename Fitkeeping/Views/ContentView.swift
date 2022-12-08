//
//  ContentView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    @State private var page: String = "Dashboard"
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "TabBarUnselected")
      }
    
    var body: some View {
        VStack() {
            HeaderView(page: $page)
            
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
                
            }
            .tint(Color.maroon)
        }
        .background(Color.bgBlack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
