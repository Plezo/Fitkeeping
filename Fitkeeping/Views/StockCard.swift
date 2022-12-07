//
//  StockCard.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct StockCard: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "appletv.fill")
                    .font(.system(size: 50))
                
                VStack {
                    Text("AAPL")
                        .bold()
                        .font(.title3)
                    Text("Apple Inc")
                        .foregroundColor(.gray)
                        .lineLimit(1)
                        .truncationMode(.tail)
                }
                
                Spacer()
                
                Text("1.2%")
                    .foregroundColor(.whiteText)
                    .bold()
                    .font(.title3)
            }
            
            Spacer()
            HStack {
                Text("$137.59")
                    .bold()
                    .font(.title)
                
                Spacer()
                Text("graph")
            }
        }
        .padding(.horizontal)
        .padding(.vertical)
        .padding(5)
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.gray)
        )
    }
}

struct StockCard_Previews: PreviewProvider {
    static var previews: some View {
        StockCard()
    }
}
