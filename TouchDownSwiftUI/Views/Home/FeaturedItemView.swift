//
//  FeaturedItemView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2023.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - Properties
    let player: PlayerModel
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
