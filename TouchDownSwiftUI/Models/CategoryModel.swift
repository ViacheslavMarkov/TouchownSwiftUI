//
//  CategoryModel.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2023.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id      : Int
    let name    : String
    let image   : String
}
