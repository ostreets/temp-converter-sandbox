//
//  Temp_ConverterUITests.swift
//  Temp ConverterUITests
//
//  Created by Omar Calles on 6/26/19.
//  Copyright © 2019 Omar Calles. All rights reserved.
//

import XCTest

class Temp_ConverterUITests: XCTestCase {
    var testHelper: TestHelper!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        testHelper = TestHelper()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConvertButton() {
        testHelper.convertButton.tap()
        XCTAssertEqual(testHelper.celsiusField.value as? String, "0")
        XCTAssertEqual(testHelper.fahrenheitField.value as? String, "0")
        testHelper.convertButton.tap()
        XCTAssertEqual(testHelper.celsiusField.value as? String, "")
        XCTAssertEqual(testHelper.fahrenheitField.value as? String, "")
    }
    
    func testFahrenheitToCelsius() {
        testHelper.fahrenheitField.tap()
        testHelper.fahrenheitField.typeText("32")
        testHelper.convertButton.tap()
        XCTAssertEqual(testHelper.celsiusField.value as? String, "0.0")
    }
    
    func testCelsiusToFahrenheit() {
        testHelper.celsiusField.tap()
        testHelper.celsiusField.typeText("16")
        testHelper.convertButton.tap()
        XCTAssertEqual(testHelper.fahrenheitField.value as? String, "60.8")
    }
    
    func testClearFields() {
        testHelper.fahrenheitField.tap()
        testHelper.fahrenheitField.typeText("32")
        testHelper.convertButton.tap()
        XCTAssertEqual(testHelper.celsiusField.value as? String, "0.0")
        testHelper.clearButton.tap()
        XCTAssertEqual(testHelper.celsiusField.value as? String, "")
        XCTAssertEqual(testHelper.fahrenheitField.value as? String, "")
    }
}
