//
//  WatchlistView.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct WatchlistView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Watchlist")
                    .font(.title)
                    .bold()
                    .foregroundColor(.maroon)
                Spacer()
            }
            
            ScrollView {
                VStack {
                    StockCard()
                    StockCard()
                    StockCard()
                }
            }
            .padding(3)
        }
    }
}

struct WatchlistView_Previews: PreviewProvider {
    static var previews: some View {
        WatchlistView()
    }
}
