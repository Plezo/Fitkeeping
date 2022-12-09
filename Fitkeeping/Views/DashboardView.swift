//
//  ProfileView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

// Temporary data objects, will be replaced with api stuff
var dummy1 = DayObj(day: 1, finished: true, weightLifted: 17940, duration: "2h 02m")
var dummy2 = DayObj(day: 2, finished: true, weightLifted: 25530, duration: "2h 30m")
var dummy3 = DayObj(day: 3, date: "December 8th")
var dummy4 = DayObj(day: 4, date: "December 9th")

// When using api, rhs will be api call instead
var dummyWeek = WeekObj(
    week: 3,
    firstDay: "December 5th",
    program: "nSuns 5-3-1",
    days: [dummy1, dummy2, dummy3, dummy4]
)

struct DashboardView: View {
    var body: some View {
        VStack {
            Week(week: dummyWeek)
            Spacer()
            Chart()
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
