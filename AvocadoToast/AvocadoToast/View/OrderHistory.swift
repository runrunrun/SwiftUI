//
//  OrderHistory.swift
//  AvocadoToast
//
//  Created by Kunwar, Hari on 12/26/20.
//

import SwiftUI

struct OrderHistory: View {
  @ObservedObject var viewModel = OrderHistoryViewModel()
  var body: some View {
    List(viewModel.rows, id: \.id) { vm in
      HStack {
        VStack(alignment: .leading) {
          Text(vm.title)
          Text(vm.subtitle)
        }
      }
    }.onAppear {
      viewModel.loadOrderHistory()
    }
  }
}

struct OrderHistory_Previews: PreviewProvider {
  static var previews: some View {
    OrderHistory()
  }
}
