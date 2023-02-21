//
//  FeaturedTabView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2023.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - Properties
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 16)
            }//: Loop
        }//: Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(.gray)
    }
}
