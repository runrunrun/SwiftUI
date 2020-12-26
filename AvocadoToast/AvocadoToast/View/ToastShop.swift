//
//  ToastShop.swift
//  AvocadoToast
//
//  Created by Kunwar, Hari on 12/26/20.
//

import SwiftUI

struct ToastShop: View {
  var body: some View {
    NavigationView {
      TabView {
        OrderForm()
          .tabItem {
          Image(systemName: "square.and.pencil")
          Text(LocalizedString.order)
        }
        OrderHistory()
          .tabItem {
            Image(systemName: "clock.fill")
            Text(LocalizedString.history)
          }
      }
    }
  }
}

// MARK: - LocalizedString
extension ToastShop {
  struct LocalizedString {
    static let order = NSLocalizedString("ToastOrder.Order", comment: "Order toast.")
    static let history = NSLocalizedString("ToastOrder.History", comment: "Order history.")
  }
}

struct ToastShop_Previews: PreviewProvider {
  static var previews: some View {
    ToastShop()
  }
}
