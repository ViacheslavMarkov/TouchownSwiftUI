//
//  BrandModel.swift
//  TouchDownSwiftUI
//
//  Created by Viacheslav Markov on 14.02.2023.
//

import Foundation

protocol GoodProtocol: Codable, Identifiable {
    var id      : Int { get }
    var image   : String { get }
}

struct BrandModel: GoodProtocol {
    let id: Int
    let image: String
}
