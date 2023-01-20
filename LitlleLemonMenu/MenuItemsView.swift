//
//  MenuItemsView.swift
//  LitlleLemonMenu
//
//  Created by Fedi Nabli on 11/1/2023.
//

import SwiftUI

struct MenuItemsView: View {
    let numberCol = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    let ingredients = [Ingredient.broccoli,Ingredient.spaghetti,Ingredient.spinach,Ingredient.tomatoSauce,Ingredient.carrot]
    
    var body: some View {
        NavigationView {
                VStack( alignment: .leading, spacing: 20) {
                    HStack {
                        Spacer()
                        NavigationLink (destination: MenuItemsOptionView()
                            .navigationBarBackButtonHidden()){
                            Image(systemName: "calendar")
                                
                        }
                    }
                    
                    VStack (alignment: .leading) {
                        Text("Menu")
                            .font(.largeTitle)
                            .fontDesign(.monospaced)
                            .bold()
                            .frame(alignment: .leading)
                    }
                    
                    ScrollView {
                        Grid (alignment: .leading) {
                            
                            
                            Text("Food")
                                .font(.title2)
                            LazyVGrid(columns: numberCol) {
                                ForEach(1...12, id: \.self ){element in
                                    NavigationLink (destination: MenuItemDetailsView(
                                        menuItem: MenuItem(price: 9.99, title: "Food \(element)", menuCategory: MenuCategory.food, ordersCount: 1 * element, ingredients: ingredients)
                                    )) {
                                        MenuFormat(id: element, item: "Food")
                                    }
                                }
                            }
                          
                            Text("Drinks")
                                .font(.title2)
                            LazyVGrid(columns: numberCol) {
                                ForEach(1...8, id: \.self ){element in
                                    NavigationLink (destination: MenuItemDetailsView(
                                        menuItem: MenuItem(price: 12.99, title: "Drink \(element)", menuCategory: MenuCategory.drink, ordersCount: 1 * element, ingredients: ingredients)
                                    )) {
                                        MenuFormat(id: element, item: "Drink")
                                    }
                                }
                            }
                            
                            Text("Dessert")
                                .font(.title2)
                            LazyVGrid(columns: numberCol) {
                                ForEach(1...4, id: \.self ){element in
                                    NavigationLink (destination: MenuItemDetailsView(
                                        menuItem: MenuItem(price: 3.99, title: "Desser \(element)", menuCategory: MenuCategory.dessert, ordersCount: 1 * element, ingredients: ingredients)
                                    )) {
                                        MenuFormat(id: element, item: "Dessert")
                                    }
                                }
                            }
                            
                        }
                       
                    }
                    .scrollContentBackground(.hidden)
                }
                .padding(20)
        }
    }
    
    struct MenuItemsView_Previews: PreviewProvider {
        static var previews: some View {
            MenuItemsView()
        }
    }
    
    struct MenuFormat: View {
        let id: Int
        let item: String
        var body: some View {
            VStack{
                Rectangle()
                    .fill(.black)
                    .frame(height: 80)
                    .cornerRadius(6)
                
                Text("\(item) \(id)")
                    .foregroundColor(.black)
            }
        }
    }
}
