//
//  Item.swift
//  ExpandableList
//
//  Created by Daniel Watson on 21/01/2021.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let title: String
    let children: [Item]?
}
