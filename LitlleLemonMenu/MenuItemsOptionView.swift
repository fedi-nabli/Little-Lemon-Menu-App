//
//  MenuItemsOptionView.swift
//  LitlleLemonMenu
//
//  Created by Fedi Nabli on 13/1/2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    let selectedCategories = [Categories.Food,Categories.Drink, Categories.Desserts]
    
    let sortBy = [SortBy.popular,SortBy.price, SortBy.range]
    
    var body: some View {
        NavigationView {
            
            VStack (alignment: .leading, spacing: 10) {
                HStack {
                    Spacer()
                    NavigationLink (destination: MenuItemsView()
                        .navigationBarBackButtonHidden()){
                            Text("Done")
                                .font(.title2)
                        }
                }
                Text("Filter")
                    .font(.largeTitle)
                    .fontDesign(.monospaced)
                    .bold()
                Section (header: Text("Selected Categories")
                    .font(.system(size:  24))
                    .foregroundColor(.gray)){
                        List {
                            ForEach (selectedCategories, id:  \.self){element in
                                Text(element.rawValue)
                            }
                        }
                        .padding([.leading,.trailing,.top ],-10)
                    }
                    
                Section (header: Text("Sort By")
                    .font(.system(size: 24))
                    .foregroundColor(.gray)){
                        List {
                            ForEach (sortBy, id:  \.self){element in
                                Text(element.rawValue)
                            }
                        }.padding([.leading,.trailing,.top],-10)
                }
                Spacer()
            }
            
            .padding(10)
            .background(Color.gray.opacity(0.1))
            
        }
        
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
    }
}
