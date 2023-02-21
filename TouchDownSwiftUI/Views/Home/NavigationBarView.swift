//
//  NavigationBarView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 13.02.2023.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - Properties
    
    @State private var isAnimating: Bool = false
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                    .foregroundColor(.black)
            })//: Button
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating = true
                    }
                }
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }//: ZStack
            })//: Button
        }//: HStack
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
