//
//  Order.swift
//  AvocadoToast
//
//  Created by Kunwar, Hari on 12/26/20.
//

import Foundation

struct Order {
  var id: String = UUID().uuidString
  var includeSalt: Bool = false
  var includeRedPepper: Bool = false
  var quantity: Int = 1
  var summary: String = ""
  var date: Date = Date()
}
