//
//  OrderHistoryRowViewModelTests.swift
//  AvocadoToastTests
//
//  Created by Kunwar, Hari on 12/28/20.
//

import XCTest
@testable import AvocadoToast

final class OrderHistoryRowViewModelTests: XCTestCase {
  func test_Init_WithOrder_ShouldInitializeProperties() {
    // Arrange
    let order = Order(id: "testid",
                      includeSalt: true,
                      includeRedPepper: true,
                      quantity: 2,
                      summary: "test summary",
                      date: Date())
    let dateFormatter = DateFormatter()
    let dateString = dateFormatter.string(from: order.date)
    
    // Act
    let vm = OrderHistoryRowViewModel(order: order, dateFormatter: dateFormatter)
    
    // Assert
    XCTAssert(vm.id == order.id)
    XCTAssert(vm.title == order.summary)
    XCTAssert(vm.subtitle == dateString)
  }
}
