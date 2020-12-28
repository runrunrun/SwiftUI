//
//  OrderHistoryViewModelTests.swift
//  AvocadoToastTests
//
//  Created by Kunwar, Hari on 12/28/20.
//

import XCTest
@testable import AvocadoToast

class OrderHistoryViewModelTests: XCTestCase {
  func test_Init_ShouldInitializeProperties() {
    // Arrange
    let vm = OrderHistoryViewModel()
    
    // Assert
    XCTAssert(vm.rows.isEmpty)
  }
  
  func test_LoadOrderHistory_ShouldLoadRowViewModels() {
    // Arrange
    let vm = OrderHistoryViewModel()
    
    // Act
    vm.loadOrderHistory()
    
    // Assert
    XCTAssert(vm.rows.count > 0)
  }
}
