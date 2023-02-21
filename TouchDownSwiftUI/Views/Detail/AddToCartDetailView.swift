//
//  AddToCartDetailView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 16.02.2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//: Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProducts.red,
                green: shop.selectedProduct?.green ?? sampleProducts.green,
                blue: shop.selectedProduct?.blue ?? sampleProducts.blue
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
