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
          Text("Order")
        }
        OrderHistory()
          .tabItem {
            Image(systemName: "clock.fill")
            Text("History")
          }
      }
    }
  }

}

struct ToastShop_Previews: PreviewProvider {
  static var previews: some View {
    ToastShop()
  }
}
