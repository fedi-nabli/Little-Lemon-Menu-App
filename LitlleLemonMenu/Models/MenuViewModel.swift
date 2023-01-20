//
//  MenuViewModel.swift
//  LitlleLemonMenu
//
//  Created by Fedi Nabli on 20/1/2023.
//

class MenuViewModel {
    var foodMenuItems: [MenuItem]
    var drinkMenuItem: [MenuItem]
    var dessertMenuItem: [MenuItem]
    
    init(foodMenuItems: [MenuItem], drinkMenuItem: [MenuItem], dessertMenuItem: [MenuItem]) {
        self.foodMenuItems = foodMenuItems
        self.drinkMenuItem = drinkMenuItem
        self.dessertMenuItem = dessertMenuItem
    }
}
