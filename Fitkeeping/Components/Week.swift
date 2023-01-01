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
                Text("Week \(week.week)")
                    .bold()
                    .font(.title)
                    .foregroundColor(.maroon)
                Text(week.firstDay)
                    .bold()
                    .font(.footnote)
                    .foregroundColor(.whiteText)
            }
            
            Spacer()
            
            Text(week.program)
                .bold()
                .font(.title2)
                .foregroundColor(.whiteText)
        }
        
        Divider().frame(width:0, height:10)
        
        // Days
        VStack {
            ForEach(week.days, id: \.day) {day in
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
