//
//  PortfolioCard.swift
//  Fitkeeping
//
//  Created by Patryk Lezon on 12/6/22.
//

import SwiftUI

struct PortfolioCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Portfolio Value")
                .foregroundColor(.gray)
                .font(.title2)
            
            HStack(alignment: .top) {
                Text("$1223.30")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                Text("2.1%")
                    .foregroundColor(.whiteText)
                    .bold()
                    .font(.title3)
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    
                }) {
                    Text("Deposit")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10).fill(Color.whiteText)
                            )
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Withdraw")
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 10).stroke(Color.gray)
                            )
                }
            }
        }
        .padding()
        .frame(height: UIScreen.main.bounds.height / 4)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.maroon)
        )
    }
}

struct PortfolioCard_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioCard()
    }
}
