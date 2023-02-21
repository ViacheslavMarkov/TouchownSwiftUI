//
//  Constant.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 13.02.2023.
//

import SwiftUI

struct Constant {
    
}

//MARK: - Data
let players     : [PlayerModel]     = Bundle.main.decodeJSON("player.json")
let categories  : [CategoryModel]   = Bundle.main.decodeJSON("category.json")
let products    : [ProductModel]    = Bundle.main.decodeJSON("product.json")
let brands      : [BrandModel]      = Bundle.main.decodeJSON("brand.json")
let sampleProducts: ProductModel    = products[0]

//MARK: - Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//MARK: - Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array.init(repeating: GridItem(.flexible(), spacing: columnSpacing), count: 2)
}

//MARK: - UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

//MARK: - API

//MARK: - Image

//MARK: - Data
