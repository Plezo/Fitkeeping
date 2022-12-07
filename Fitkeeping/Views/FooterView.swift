//
//  FooterView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct FooterView: View {
    @Binding var page: String
    
    var body: some View {
        HStack() {
            Spacer()
            
            Button(action: {
                page = "Dashboard"
            }) {
                VStack {
                    Image(systemName: "magnifyingglass.circle.fill")
                        .accentColor(Color.maroon)
                        .font(.system(size: 30))
                        .padding(.top, 10.0)
                        .padding(.bottom, 1.0)
                    Text("Dashboard")
                        .font(.footnote)
                        .bold()
                }
                
            }
            
            Spacer()
            
            Button(action: {
                page = "Explore"
            }) {
                VStack {
                    Image(systemName: "magnifyingglass.circle.fill")
                        .accentColor(Color.maroon)
                        .font(.system(size: 30))
                        .padding(.top, 10.0)
                        .padding(.bottom, 1.0)
                    Text("Explore")
                        .font(.footnote)
                        .bold()
                }
            }
            
            Spacer()
            
            Button(action: {
                page = "Profile"
            }) {
                VStack {
                    Image(systemName: "magnifyingglass.circle.fill")
                        .accentColor(Color.maroon)
                        .font(.system(size: 30))
                        .padding(.top, 10.0)
                        .padding(.bottom, 1.0)
                    Text("Profile")
                        .font(.footnote)
                        .bold()
                }
            }
            Spacer()
        }
        .foregroundColor(Color.whiteText)
        .background(Color.maroon)
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity, maxHeight: 20)
    }
}
