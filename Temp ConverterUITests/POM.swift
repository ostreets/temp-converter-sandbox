//
//  POM.swift
//  Temp Converter
//
//  Created by Omar Calles on 6/26/19.
//  Copyright © 2019 Omar Calles. All rights reserved.
//

import Foundation
import XCTest

class TestHelper{
    var app = XCUIApplication()
    var fahrenheitField: XCUIElement!
    var celsiusField: XCUIElement!
    var clearButton: XCUIElement!
    var convertButton: XCUIElement!
    
    init() {
        fahrenheitField = app.textFields.element(boundBy: 0)
        celsiusField = app.textFields.element(boundBy: 1)
        clearButton = app.buttons.element(boundBy: 0)
        convertButton = app.buttons.element(boundBy: 1)
    }
}
