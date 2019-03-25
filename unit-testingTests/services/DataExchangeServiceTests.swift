//
//  DataExchangeServiceTests.swift
//  unit-testing
//
//  Created by Chris J W Walker on 22/03/2019.
//  Copyright © 2019 Chris J W Walker. All rights reserved.
//

import XCTest
@testable import unit_testing

class DataExchangeServiceTests: XCTestCase {
    
    var testService: DataExchangeService!
    
    override func setUp() {
        testService = DataExchangeService()
    }
    
    override func tearDown() {
        testService = nil
    }
    
    func testValidateInputWithSomeInput() {
        let testName: String? = "Chris"
        XCTAssertEqual(testService.validateInput(inputText: testName), "Hello Chris", "Output was not equal to 'Hello \(testName!)'")
    }
    
    func testValidateInputWithNoInput() {
        func testValidateInputWithSomeInput() {
            let testName: String? = nil
            XCTAssertEqual(testService.validateInput(inputText: testName), "You didn't enter anything", "Output was not equal to 'You didn't enter anything'")
        }
    }
}

