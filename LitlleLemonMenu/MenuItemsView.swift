//
//  MenuItemsView.swift
//  LitlleLemonMenu
//
//  Created by Fedi Nabli on 11/1/2023.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        ScrollView {
            List {
                Text("Hello")
                Text("Hello")
                Text("Hello")
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}
