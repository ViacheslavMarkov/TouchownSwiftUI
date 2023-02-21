//
//  FooterView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 13.02.2023.
//

import SwiftUI

struct FooterView: View {
    //MARK: - Properties
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Viacheslav Markov\nAll right resrved")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }//: VStack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
