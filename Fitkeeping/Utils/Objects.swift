//
//  Objects.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/9/22.
//

// TODO: Fill out Exercise
struct ExerciseObj: Hashable {
    var id: Int
    var name: String
    var numSets: Int
    var expected: [[Int]] // inside arr is (expected weight, expected reps, expected RPE, completed) (# sets == length of array)
    var performed: [[Int]] // not performed sets will be -1, -1
}

struct DayObj: Hashable {
    var day: Int
    var finished: Bool = false
//    var exercises: [ExerciseObj]
    var date: String? // TODO: Turn into date
    var weightLifted: Int?
    var duration: String? // Timestamp? TODO: Figure out what dtype
}

struct WeekObj: Hashable {
    var week: Int
    var firstDay: String // TODO: Turn into date (so could calc each days date)
    var program: String
    var days: [DayObj]
}
