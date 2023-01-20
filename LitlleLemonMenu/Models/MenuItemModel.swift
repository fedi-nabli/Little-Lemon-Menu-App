//
//  MenuItemModel.swift
//  LitlleLemonMenu
//
//  Created by Fedi Nabli on 20/1/2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get }
    var ingredients: [Ingredient] { get }
}

class MenuItem: MenuItemProtocol {
    var id: UUID = UUID()
    var price: Double = 4.90
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int = 5
    var ingredients: [Ingredient]
    
    init(price: Double, title: String, menuCategory: MenuCategory, ordersCount: Int, ingredients: [Ingredient]) {
        self.price = price
        self.title = title
        self.menuCategory = menuCategory
        self.ordersCount = ordersCount
        self.ingredients = ingredients
    }
}
