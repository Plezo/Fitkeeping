//
//  Objects.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/9/22.
//

// TODO: Fill out Exercise
struct ExerciseObj: Hashable {

}

struct DayObj: Hashable {
    var day: Int
    var finished: Bool = false
    var date: String? // TODO: Turn into date
    var weightLifted: Int?
    var duration: String? // Timestamp? TODO: Figure out what dtype
//    var exercises: [ExerciseObj]
}

struct WeekObj: Hashable {
    var week: Int
    var firstDay: String // TODO: Turn into date (so could calc each days date)
    var program: String
    var days: [DayObj]
}
