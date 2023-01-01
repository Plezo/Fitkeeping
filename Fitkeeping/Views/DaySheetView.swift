//
//  DaySheetView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/21/22.
//

import SwiftUI

var dummyExercise = ExerciseObj(id: 0, name: "Good Mornings", expected: [[8, 8], [8, 8], [8, 8]], performed: [[6, 8], [-1, -1], [-1, -1]])

var exercises: [ExerciseObj] = [dummyExercise]

struct DaySheetView: View {
    @Binding var showDaySheet: Bool
    let day: DayObj
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    
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
                
                Button(action: {
                    self.showDaySheet = false
                }) {
                    Image(systemName: "x.circle.fill")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                        .padding()
                        .foregroundColor(.maroon)
                }
            }
            .padding()
            
            Divider().frame(width:0, height:10)

            // Holds all exercise cards
            ForEach(exercises, id:\.id) {exercise in
                VStack {
                    ExerciseCard(exercise: exercise)
                }
            }
            
            Spacer()
        }
    }
}

struct ExerciseCard: View {
    @State var exercise: ExerciseObj
    
    var body: some View {
        VStack {
            Text(exercise.name)
                .font(.largeTitle)
                .padding()
            
            ForEach(0..<exercise.expected.count) {i in
                if exercise.performed[i][0] != -1 {
                    VStack {
                        Text("\(exercise.performed[i][0]) reps")
                        Text("RPE \(exercise.performed[i][1])")
                    }
                    .foregroundColor(Color.whiteText)
                }
                else {
                    VStack {
                        Text("\(exercise.expected[i][0]) reps")
                        Text("RPE \(exercise.expected[i][1])")
                    }
                    .foregroundColor(Color.whiteTextHalf)
                }
            }
            .padding()
        }
    }
}

struct DaySheetView_Preview: PreviewProvider {
    static var previews: some View {
        DaySheetView(showDaySheet: .constant(true), day: dummy1)
    }
}
