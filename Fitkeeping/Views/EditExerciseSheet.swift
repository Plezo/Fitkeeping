//
//  EditExerciseSheet.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 1/7/23.
//

import SwiftUI

struct EditExerciseSheet: View {
    @Binding var showEditSheet: Bool
    @State var exercise: ExerciseObj
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EditExerciseSheet_Previews: PreviewProvider {
    static var previews: some View {
        EditExerciseSheet(showEditSheet: .constant(true), exercise: dummyExercise)
    }
}
