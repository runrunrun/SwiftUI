//
//  OrderHistoryViewModel.swift
//  AvocadoToast
//
//  Created by Kunwar, Hari on 12/26/20.
//

import Foundation

final class OrderHistoryViewModel: ObservableObject {
  @Published var rows: [OrderHistoryRowViewModel] = []

  private lazy var dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .short
    dateFormatter.timeStyle = .short
    return dateFormatter
  }()

  func loadOrderHistory() {
    let orders = stubOrders()
    var vms = [OrderHistoryRowViewModel]()
    orders.forEach { order in
      let vm = OrderHistoryRowViewModel(order: order, dateFormatter: dateFormatter)
      vms.append(vm)
    }
    rows = vms
  }

  private func stubOrders() -> [Order] {
    var orders = [Order]()
    for i in 0...10 {
      var order = Order()
      order.summary = "Toast number \(i)"
      order.date = Date()
      orders.append(order)
    }
    return orders
  }
}



