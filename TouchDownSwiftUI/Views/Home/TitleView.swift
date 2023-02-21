//
//  TitleView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2023.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    var title: String
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }//: HStack
        .padding(.horizontal)
        .padding(.top, 16)
        .padding(.bottom, 8)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
