//
//  ProductDetailView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 16.02.2023.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail bottom part
            VStack(alignment: .center, spacing: 0) {
                // Rating + size
                RatingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProducts.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//: Scroll
                
                // Quantity + favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            }//: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }//: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProducts.red,
                green: shop.selectedProduct?.green ?? sampleProducts.green,
                blue: shop.selectedProduct?.blue ?? sampleProducts.blue
            )
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12 Pro")
            .environmentObject(Shop())
    }
}
