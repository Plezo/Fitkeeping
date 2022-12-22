//
//  DaySheetView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/21/22.
//

import SwiftUI

struct DaySheetView: View {
    @Binding var showDaySheet: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Button(action: {
                self.showDaySheet = false
            }) {
                Text("Close")
            }
            
            Spacer()
            
            Text("Sheet")
        }
    }
}
