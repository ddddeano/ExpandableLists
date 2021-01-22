//
//  SideBarList.swift
//  ExpandableList
//
//  Created by Daniel Watson on 21/01/2021.
//

import SwiftUI

struct SideBarList: View {
    
    let items: [Item]
    
    var body: some View {
        List {
            Label("Home", systemImage: "house")
            OutlineGroup(items, children: \.children) {
                Text($0.title)
            }
            Section(header: Text("Settings")) {
                Label("Account", systemImage: "person.crop.circle")
                Label("Help", systemImage: "person.3")
                Label("Logout", systemImage: "applelogo")
            }
        }.listStyle(SidebarListStyle())
    }
}

struct SideBarList_Previews: PreviewProvider {
    static var previews: some View {
        SideBarList(items: Item.stubs)
    }
}
