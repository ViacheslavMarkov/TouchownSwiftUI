//
//  HeaderDetailView.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 16.02.2023.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Functions
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProducts.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }//: VStack
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
            .environmentObject(Shop())
    }
}
