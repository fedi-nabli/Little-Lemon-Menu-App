//
//  MenuItemDetailsView.swift
//  LitlleLemonMenu
//
//  Created by Fedi Nabli on 13/1/2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let menuItem: MenuItem
    
    init(menuItem: MenuItem) {
        self.menuItem = menuItem
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("\(menuItem.title)")
                    .font(.largeTitle)
                    .fontDesign(.rounded)
                    .bold()
                    .frame(alignment: .leading)
                
                Spacer()
            }
            .padding([.leading, .trailing], 40)
            
            List {
                VStack (alignment: .center) {
                    Image("Little Lemon logo")
                        .resizable()
                        .frame(width: 300, height: 400)
                    Spacer()
                    
                    Text("Price:")
                        .bold()
                    Text("\(menuItem.price)")
                    Spacer()
                    
                    Text("Ordered:")
                        .bold()
                    Text("\(menuItem.ordersCount)")
                    Spacer()
                    
                    Text("Ingredients:")
                        .bold()
                    ForEach (menuItem.ingredients, id: \.self) {
                        element in
                        Text(element.rawValue)
                    }
                }
            }
            .scrollContentBackground(.hidden)
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let ingredients = [Ingredient.broccoli,Ingredient.spaghetti,Ingredient.spinach,Ingredient.tomatoSauce,Ingredient.carrot]
        let sampleItem = MenuItem(price: 8.79, title: "Food 3", menuCategory: MenuCategory.food, ordersCount: 3, ingredients: ingredients)
        MenuItemDetailsView(menuItem: sampleItem)
    }
}
