//
//  ProfileView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            // week, date, program name
            HStack {
                VStack {
                    Text("Week 3")
                        .bold()
                        .font(.title)
                        .foregroundColor(.maroon)
                    
                    Text("December 5th")
                        .bold()
                        .font(.footnote)
                        .foregroundColor(.whiteText)
                }
                
                Spacer()
                
                Text("nSuns 5-3-1")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.whiteText)
            }
            
            Divider().frame(width:0, height:10)
            
            // Days
            VStack {
                HStack {
                    Text("Day 1")
                        .bold()
                        .strikethrough()
                        .font(.title2)
                    Spacer()
                    Text("17940 lb")
                        .padding(.horizontal)
                        .font(.footnote)
                    Text("2h 30m")
                        .font(.footnote)
                }
                .foregroundColor(.whiteTextHalf)
                
                Divider().frame(width:0, height:10)
                
                HStack {
                    Text("Day 2")
                        .bold()
                        .strikethrough()
                        .font(.title2)
                    Spacer()
                    Text("25530 lb")
                        .padding(.horizontal)
                        .font(.footnote)
                    Text("2h 02m")
                        .font(.footnote)
                }
                .foregroundColor(.whiteTextHalf)
                
                Divider().frame(width:0, height:10)
                
                HStack {
                    Text("Day 3")
                        .bold()
                        .font(.title2)
                    Spacer()
                    Text("December 8th")
                        .font(.footnote)
                }
                .foregroundColor(.whiteText)
                
                Divider().frame(width:0, height:10)
                
                HStack {
                    Text("Day 4")
                        .bold()
                        .font(.title2)
                    Spacer()
                    Text("December 9th")
                        .font(.footnote)
                }
                .foregroundColor(.whiteText)
                
                Divider().frame(width:0, height:30)
                
                HStack {
                    Text("<")
                    Spacer()
                    Text("Finish Week")
                        .bold()
                    Spacer()
                    Text(">")
                }
                .foregroundColor(.whiteText)
            }
            
            Spacer()
            
            // Physical score x Mental score graph
            
        }
        .padding()
        .background(Color.bgBlack)
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
