//
//  ToastOrderView.swift
//  AvocadoToast
//
//  Created by Kunwar, Hari on 12/24/20.
//

import SwiftUI

struct Order {
  var includeSalt: Bool
  var includeRedPepper: Bool
  var quantity: Int
}

struct ToastOrderView: View {
  @State var order: Order
  var submitOrder: (() -> Void) = {}
  var body: some View {
    VStack {
      Text(LocalizedString.avocadoToast).font(.title)
      Toggle(isOn: $order.includeSalt) {
        Text(LocalizedString.includeSalt)
      }
      Toggle(isOn: $order.includeRedPepper) {
        Text(LocalizedString.includeRedPepper)
      }
      Stepper(value: $order.quantity, in: 1...10) {
        Text(LocalizedString.quantity(order.quantity))
      }
      Button(action: submitOrder) {
        Text(LocalizedString.order)
      }
    }.padding(.horizontal)
  }
}

// MARK: - LocalizedString
extension ToastOrderView {
  struct LocalizedString {
    static let avocadoToast = NSLocalizedString("ToastOrder.AvocadoToast", comment: "")
    static let includeSalt = NSLocalizedString("ToastOrder.IncludeSalt", comment: "Add salt to toast.")
    static let includeRedPepper = NSLocalizedString("ToastOrder.IncludeRedPepper", comment: "Add red pepper to toast.")
    static let quantity = NSLocalizedString("ToastOrder.Quantity", comment: "Number of toasts")
    static let order = NSLocalizedString("ToastOrder.Order", comment: "Order toast.")
    static let quantityFormat = NSLocalizedString("ToastOrder.Quantity", comment: "Number of toasts")
    static func quantity(_ count: Int) -> String {
      String.localizedStringWithFormat(quantityFormat, count)
    }
  }
}

// MARK: - PreviewProvider
struct ToastOrderView_Previews: PreviewProvider {
  static var previews: some View {
    let order = Order(includeSalt: false,
                      includeRedPepper: true,
                      quantity: 2)
    ToastOrderView(order: order)
  }
}
