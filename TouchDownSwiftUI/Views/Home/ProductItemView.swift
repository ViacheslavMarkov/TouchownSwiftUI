//
//  ProductItemView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2023.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Properties
    var product: ProductModel
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            // Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // Name
            Text(product.name)
                .font(.title3)
                .foregroundColor(.black)
            
            // Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//: VStack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
