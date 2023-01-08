//
//  DaySheetView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/21/22.
//

// TODO: Add a sheet to edit each set, and potentially change this view into another page or a modal

import SwiftUI

var dummyExercise = ExerciseObj(
    id: 0, name: "Good Mornings", numSets: 3,
    expected: [[135, 8, 8], [135, 8, 8], [135, 8, 8]],
    performed: [[135, 6, 8], [-1, -1, -1], [-1, -1, -1]]
)

var dummyExercise2 = ExerciseObj(
    id: 1, name: "Squats", numSets: 3,
    expected: [[225, 8, 8], [225, 8, 8], [225, 8, 8]],
    performed: [[225, 8, 8], [225, 8, 8], [-1, -1, -1]]
)

var dummyExercise3 = ExerciseObj(
    id: 2, name: "Benchpress", numSets: 3,
    expected: [[185, 8, 8], [185, 8, 8], [185, 8, 8]],
    performed: [[185, 8, 8], [185, 8, 8], [-1, -1, -1]]
)

var exercises: [ExerciseObj] = [dummyExercise, dummyExercise2, dummyExercise3]

struct SpecificDay: View {
    @State var showEditSheet: Bool = false
    let day: DayObj
    
    var body: some View {
        VStack(spacing: 20) {
            HStack() {
                VStack() {
                    Text("Week \(dummyWeek.week)")
                        .bold()
                        .font(.body)
                        .foregroundColor(.maroon)
                    
                    Text("Day \(day.day)")
                        .bold()
                        .font(.title)
                        .foregroundColor(.maroon)
                    
                    Text(dummyWeek.firstDay)
                        .bold()
                        .font(.footnote)
                        .foregroundColor(.whiteText)
                }
                
                Spacer()

//                X Button (not needed if the back button is present)
                
//                Button(action: {
//                    self.showDaySheet = false
//                }) {
//                    Image(systemName: "x.circle.fill")
//                        .resizable()
//                        .frame(width: 32.0, height: 32.0)
//                        .padding()
//                        .foregroundColor(.maroon)
//                }
            }
            .padding()

            // Renders all exercise objects
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(exercises, id:\.id) {exercise in
                    ExerciseCard(showEditSheet: $showEditSheet, exercise: exercise)
                }
            }
        }
        .background(Color.bgBlack)
    }
}

struct ExerciseCard: View {
    @Binding var showEditSheet: Bool
    @State var exercise: ExerciseObj
    
    var body: some View {
        Button(action: {
            self.showEditSheet.toggle()
        }) {
            VStack {
                Text(exercise.name)
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(Color.whiteText)
                HStack {
                    ForEach(0..<exercise.numSets) {i in
                        if exercise.performed[i][0] != -1 {
                            VStack {
                                Text("\(exercise.performed[i][0])lb")
                                Text("\(exercise.performed[i][1]) reps")
                                Text("RPE \(exercise.performed[i][2])")
                            }
                            .foregroundColor(Color.whiteText)
                        }
                        else {
                            VStack {
                                Text("\(exercise.expected[i][0])lb")
                                Text("\(exercise.expected[i][1]) reps")
                                Text("RPE \(exercise.expected[i][2])")
                            }
                            .foregroundColor(Color.whiteTextHalf)
                        }
                    }
                    .padding()
                }
            }
        }.sheet(isPresented: $showEditSheet) {
            EditExerciseSheet(showEditSheet: $showEditSheet, exercise: exercise)
        }
    }
}

struct DaySheetView_Preview: PreviewProvider {
    static var previews: some View {
        SpecificDay(showEditSheet: false, day: dummy1)
    }
}
