//
//  TopPartDetailView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 16.02.2023.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    @State private var isAnimating: Bool = false
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // Price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProducts.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // Photo
            Image(shop.selectedProduct?.image ?? sampleProducts.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }//: HStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating = true
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
