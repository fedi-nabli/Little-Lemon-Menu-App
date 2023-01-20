//
//  MenuItemsView.swift
//  LitlleLemonMenu
//
//  Created by Fedi Nabli on 11/1/2023.
//

import SwiftUI

struct MenuItemsView: View {
    let numberCol = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    let ingredients = [Ingredient.pasta, Ingredient.spaghetti, Ingredient.tomatoSauce, Ingredient.carrot, Ingredient.broccoli]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Spacer()
                    NavigationLink(destination: MenuItemDetailsView().navigationBarBackButtonHidden()) {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                }
                
                VStack(alignment: .leading) {
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
                            ForEach (1...12, id: \.self) {
                                element in
                                NavigationLink(destination: MenuItemDetailsView()) {
                                    MenuFormat(id: element, item: "Food")
                                }
                            }
                        }
                        
                        Text("Drink")
                            .font(.title2)
                        
                        LazyVGrid(columns: numberCol) {
                            ForEach (1...8, id: \.self) {
                                element in
                                NavigationLink(destination: MenuItemDetailsView()) {
                                    MenuFormat(id: element, item: "Drink")
                                }
                            }
                        }
                        
                        Text("Dessert")
                            .font(.title2)
                        
                        LazyVGrid(columns: numberCol) {
                            ForEach (1...4, id: \.self) {
                                element in
                                NavigationLink(destination: MenuItemDetailsView()) {
                                    MenuFormat(id: element, item: "Food")
                                }
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
        VStack {
            Rectangle()
                .fill(.black.opacity(0.85))
                .frame(height: 80)
                .cornerRadius(6)
            
            Text("\(item) \(id)")
                .foregroundColor(.black)
        }
    }
}
