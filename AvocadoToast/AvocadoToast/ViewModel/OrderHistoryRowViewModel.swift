//
//  OrderHistoryRowViewModel.swift
//  AvocadoToast
//
//  Created by Kunwar, Hari on 12/26/20.
//

import SwiftUI

struct OrderHistoryRowViewModel {
  private let order: Order
  private let dateFormatter: DateFormatter
  var id: String { order.id }
  var title: String { order.summary }
  var subtitle: String { return dateFormatter.string(from: order.date) }
  
  init(order: Order, dateFormatter: DateFormatter) {
    self.order = order
    self.dateFormatter = dateFormatter
  }
}

