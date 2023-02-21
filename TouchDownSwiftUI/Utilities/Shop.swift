//
//  Shop.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 21.02.2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showProduct: Bool = false
    @Published var selectedProduct: ProductModel?
}
