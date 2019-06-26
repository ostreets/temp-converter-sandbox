//
//  Temp_ConverterUITests.swift
//  Temp ConverterUITests
//
//  Created by Omar Calles on 6/26/19.
//  Copyright © 2019 Omar Calles. All rights reserved.
//

import XCTest

class Temp_ConverterUITests: XCTestCase {
    var app = XCUIApplication()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

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
        let fahrenheitField = app.textFields.element(boundBy: 0)
        let celsiusField = app.textFields.element(boundBy: 1)
        let convertButton = app.buttons.element(boundBy: 1)
        convertButton.tap()
        XCTAssertEqual(celsiusField.value as? String, "0")
        XCTAssertEqual(fahrenheitField.value as? String, "0")
        convertButton.tap()
        XCTAssertEqual(celsiusField.value as? String, "")
        XCTAssertEqual(fahrenheitField.value as? String, "")
    }
    
    func testFahrenheitToCelsius() {
        let fahrenheitField = app.textFields.element(boundBy: 0)
        let celsiusField = app.textFields.element(boundBy: 1)
        let convertButton = app.buttons.element(boundBy: 1)
        fahrenheitField.tap()
        fahrenheitField.typeText("32")
        convertButton.tap()
        XCTAssertEqual(celsiusField.value as? String, "0.0")
    }
    
    func testCelsiusToFahrenheit() {
        let fahrenheitField = app.textFields.element(boundBy: 0)
        let celsiusField = app.textFields.element(boundBy: 1)
        let convertButton = app.buttons.element(boundBy: 1)
        celsiusField.tap()
        celsiusField.typeText("16")
        convertButton.tap()
        XCTAssertEqual(fahrenheitField.value as? String, "60.8")
    }
    
    func testClearFields() {
        let fahrenheitField = app.textFields.element(boundBy: 0)
        let celsiusField = app.textFields.element(boundBy: 1)
        let clearButton = app.buttons.element(boundBy: 0)
        let convertButton = app.buttons.element(boundBy: 1)
        fahrenheitField.tap()
        fahrenheitField.typeText("32")
        convertButton.tap()
        XCTAssertEqual(celsiusField.value as? String, "0.0")
        clearButton.tap()
        XCTAssertEqual(celsiusField.value as? String, "")
        XCTAssertEqual(fahrenheitField.value as? String, "")
    }
}
