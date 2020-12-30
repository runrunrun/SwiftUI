//
//  OrderForm.swift
//  AvocadoToast
//
//  Created by Kunwar, Hari on 12/24/20.
//

import SwiftUI

struct OrderForm: View {
  @State private var order: Order = Order()
  var submitOrder: (() -> Void) = {}
  var body: some View {
    VStack {
      Text(LocalizedString.avocadoToast).font(.title)
      Toggle(isOn: $order.includeSalt) {
        Text(LocalizedString.includeSalt)
      }.accessibility(identifier: Identifier.includeSaltToggle)
      Toggle(isOn: $order.includeRedPepper) {
        Text(LocalizedString.includeRedPepper)
      }.accessibility(identifier: Identifier.includeRedPepperToggle)
      Stepper(value: $order.quantity, in: 1...10) {
        Text(LocalizedString.quantity(order.quantity)).accessibility(identifier: Identifier.quantityLabel)
      }.accessibility(identifier: Identifier.quantityStepper)
      Button(action: submitOrder) {
        Text(LocalizedString.order)
      }.accessibility(identifier: Identifier.orderButton)
    }.padding(.horizontal)
  }
}

// MARK: - LocalizedString
extension OrderForm {
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

// MARK: - Accessibility Identifier
extension OrderForm {
  struct Identifier {
    static let includeSaltToggle = "IncludeSaltToggle"
    static let includeRedPepperToggle = "IncludeRedPepperToggle"
    static let quantityStepper = "QuantityStepper"
    static let quantityLabel = "QuantityLabel"
    static let orderButton = "OrderButton"
  }
}

// MARK: - PreviewProvider
struct OrderForm_Previews: PreviewProvider {
  static var previews: some View {
    OrderForm()
  }
}
