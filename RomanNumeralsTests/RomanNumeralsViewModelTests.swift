//
// Created by Karl Sigiscar on 9/27/18.
// Copyright (c) 2018 ___FULLUSERNAME___. All rights reserved.
//

import XCTest
@testable import RomanNumerals

class RomanNumeralsViewModelTests: XCTestCase {

    var viewModel:RomanNumeralsViewModel!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = RomanNumeralsViewModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }


    func testViewModel() {
        XCTAssertEqual(viewModel.convert(number: 1, index: 0), "I")
    }
}