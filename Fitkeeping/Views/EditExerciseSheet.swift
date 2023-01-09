//
//  EditExerciseSheet.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 1/7/23.
//

import SwiftUI

struct EditExerciseSheet: View {
    @Binding var showEditSheet: Bool
    @Binding var exercise: ExerciseObj
    
    private let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    var body: some View {
        VStack {
            HStack() {
                Text("\(exercise.name)")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.maroon)
                
                Spacer()
                
                Button(action: {
                    showEditSheet.toggle()
                }) {
                    Image(systemName: "x.circle.fill")
                        .resizable()
                        .frame(width: 32.0, height: 32.0)
                        .padding()
                        .foregroundColor(.maroon)
                }
            }
            .padding()
            
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(0..<exercise.expected.count, id: \.self) {i in
                        if exercise.performed[i][3] == 1 {
                            VStack {
                                TextField("\(exercise.expected[i][0])", value: $exercise.performed[i][0], formatter: numberFormatter)
                                TextField("\(exercise.expected[i][1])", value: $exercise.performed[i][1], formatter: numberFormatter)
                                TextField("\(exercise.expected[i][2])", value: $exercise.performed[i][2], formatter: numberFormatter)
                            }
                            .frame(width: 100)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(Color.whiteText)
                        }
                        else {
                            VStack {
                                TextField("\(exercise.expected[i][0])", value: $exercise.expected[i][0], formatter: numberFormatter)
                                TextField("\(exercise.expected[i][1])", value: $exercise.expected[i][1], formatter: numberFormatter)
                                TextField("\(exercise.expected[i][2])", value: $exercise.expected[i][2], formatter: numberFormatter)
                            }
                            .frame(width: 100)
                            .multilineTextAlignment(.center)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(Color.whiteTextHalf)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct EditExerciseSheet_Previews: PreviewProvider {
    static var previews: some View {
        EditExerciseSheet(showEditSheet: .constant(true), exercise: .constant(dummyExercise))
    }
}
