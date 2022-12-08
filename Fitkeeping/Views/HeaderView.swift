//
//  HeaderView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct HeaderView: View {
    @Binding var page: String
    
    var body: some View {
        HStack {
            Text(page)
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.whiteText)
            
            Spacer()
            
//            Button(action: {
//                
//            }) {
//                Image(systemName: "magnifyingglass.circle.fill")
//                    .accentColor(Color.maroon)
//                    .font(.system(size: 40))
//            }
        }
        .padding()
    }
}
