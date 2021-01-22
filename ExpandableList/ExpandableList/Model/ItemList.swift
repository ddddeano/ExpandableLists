//
//  ItemList.swift
//  ExpandableList
//
//  Created by Daniel Watson on 21/01/2021.
//

import SwiftUI

struct ItemList: View {
    
    let items: [Item]
    
    var body: some View {
        List(items, children: \.children) {
            Text($0.title)
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList(items: Item.stubs)
    }
}

extension Item {
    static var stubs: [Item] = [
        Item(title: "Computers", children: [
            Item(title: "Desktops", children: [
                Item(title: "iMac", children: nil),
                Item(title: "Mac Pro", children: nil)
            ]),
            Item(title: "Laptops", children: [
                Item(title: "MacBook Pro", children: nil),
                Item(title: "MacBook Air", children: nil)
            ])
        ])
    ]
}

