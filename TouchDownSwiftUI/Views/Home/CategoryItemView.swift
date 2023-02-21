//
//  CategoryItemView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2023.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - Properties
    let category: CategoryModel
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        })//: Button
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
