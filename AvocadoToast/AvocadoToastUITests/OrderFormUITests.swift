//
//  OrderFormUITests.swift
//  AvocadoToastUITests
//
//  Created by Kunwar, Hari on 12/30/20.
//

import XCTest

class OrderFormUITests: XCTestCase {
  private let includeSaltToggleIdentifier = "IncludeSaltToggle"
  private let includeRedPepperToggleIdentifier = "IncludeRedPepperToggle"
  private let quantityStepperIdentifier = "QuantityStepper"
  private let quantityLabelIdentifier = "QuantityLabel"

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }

  func test_OrderForm_WhenLoaded_HasDefaultValues() {
    let includeSaltSwitch = XCUIApplication().switches[includeSaltToggleIdentifier]
    let includeRedPepperSwitch = XCUIApplication().switches[includeRedPepperToggleIdentifier]
    let quantityStepper = XCUIApplication().otherElements[quantityStepperIdentifier]

    XCTAssert(includeSaltSwitch.exists)
    XCTAssert(includeSaltSwitch.isEnabled)
    XCTAssert(includeSaltSwitch.value as! String == "0")

    XCTAssert(includeRedPepperSwitch.exists)
    XCTAssert(includeRedPepperSwitch.isEnabled)
    XCTAssert(includeRedPepperSwitch.value as! String == "0")

    XCTAssert(quantityStepper.exists)
    XCTAssert(quantityStepper.isEnabled)
    XCTAssert(quantityStepper.label.contains("1"))
  }

  func test_QuantityStepper_WhenTappedPlus_ShouldIncreaseQuantityInLabel() {
    let quantityStepper = XCUIApplication().otherElements[quantityStepperIdentifier]
    let quantityLabel = XCUIApplication().staticTexts[quantityLabelIdentifier]
    var count = 1

    let tapCount = Int.random(in: 1...9)
    [0...tapCount].forEach { _ in
      quantityStepper.tap()
      count += 1
    }

    print("quantityLabel.title \(quantityLabel.label)")
    XCTAssert(quantityLabel.label.contains("\(count)"))
  }
}
