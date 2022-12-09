//
//  Day.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/8/22.
//

import SwiftUI

struct Day: View {
    
    let day: DayObj
    
    var body: some View {
        if day.finished {
            HStack {
                Text("Day \(day.day)")
                    .bold()
                    .strikethrough()
                    .font(.title2)
                
                Spacer()
                
                Text("\(day.weightLifted!) lb")
                    .padding(.horizontal)
                    .font(.footnote)
                Text(day.duration!)
                    .font(.footnote)
            }
            .foregroundColor(.whiteTextHalf)
        } else {
            HStack {
                Text("Day \(day.day)")
                    .bold()
                    .font(.title2)
                
                Spacer()
                
                Text(day.date!)
                    .padding(.horizontal)
                    .font(.footnote)
            }
            .foregroundColor(.whiteText)
        }
    }
}
