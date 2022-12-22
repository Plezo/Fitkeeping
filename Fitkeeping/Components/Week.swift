//
//  Week.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/9/22.
//

import SwiftUI

struct Week: View {
    
    let week: WeekObj
    
    var body: some View {
        // Week info
        HStack {
            VStack {
                Text("Week \(dummyWeek.week)")
                    .bold()
                    .font(.title)
                    .foregroundColor(.maroon)
                Text(dummyWeek.firstDay)
                    .bold()
                    .font(.footnote)
                    .foregroundColor(.whiteText)
            }
            
            Spacer()
            
            Text(dummyWeek.program)
                .bold()
                .font(.title2)
                .foregroundColor(.whiteText)
        }
        
        Divider().frame(width:0, height:10)
        
        // Days
        VStack {
            ForEach(dummyWeek.days, id: \.day) {day in
                Day(day: day)
                Divider().frame(width:0, height:10)
            }
            
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
    }
}
