//
//  RomanNumeralsTests.swift
//  RomanNumeralsTests
//
//  Created by Karl Sigiscar on 9/27/18.
//  Copyright © 2018 Karl Sigiscar. All rights reserved.
//

import XCTest
@testable import RomanNumerals

class RomanNumeralsTests: XCTestCase {

    var converter:RomanNumeralsConverter!
    
    override func setUp() {
        super.setUp()
        converter = RomanNumeralsConverterFactory.createConverter()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testRegularRomanNumerals() {
        XCTAssertEqual(converter.convert(number: 1, index: 0), "I")
        XCTAssertEqual(converter.convert(number: 2, index: 0), "II")
        XCTAssertEqual(converter.convert(number: 3, index: 0), "III")
        XCTAssertEqual(converter.convert(number: 7, index: 0), "VII")
        XCTAssertEqual(converter.convert(number: 8, index: 0), "VIII")
        XCTAssertEqual(converter.convert(number: 10, index: 0), "X")
        XCTAssertEqual(converter.convert(number: 11, index: 0), "XI")
        XCTAssertEqual(converter.convert(number: 12, index: 0), "XII")
        XCTAssertEqual(converter.convert(number: 13, index: 0), "XIII")
        XCTAssertEqual(converter.convert(number: 15, index: 0), "XV")
        XCTAssertEqual(converter.convert(number: 18, index: 0), "XVIII")
        XCTAssertEqual(converter.convert(number: 28, index: 0), "XXVIII")
        XCTAssertEqual(converter.convert(number: 38, index: 0), "XXXVIII")
        XCTAssertEqual(converter.convert(number: 55, index: 0), "LV")
        XCTAssertEqual(converter.convert(number: 88, index: 0), "LXXXVIII")
        XCTAssertEqual(converter.convert(number: 100, index: 0), "C")
        XCTAssertEqual(converter.convert(number: 110, index: 0), "CX")
        XCTAssertEqual(converter.convert(number: 510, index: 0), "DX" )
        XCTAssertEqual(converter.convert(number: 1110, index: 0), "MCX")
        XCTAssertEqual(converter.convert(number: 2610, index: 0), "MMDCX")
    }

    // Edge cases:
    // Between 40 and 49
    // Between 90 and 99
    // Between 400 and 499
    // Between 900 and 999

    func testEdgeCaseRomanNumerals() {
        XCTAssertEqual(converter.convert(number: 46, index: 0), "XLVI")
        XCTAssertEqual(converter.convert(number: 98, index: 0), "XCVIII")
        XCTAssertEqual(converter.convert(number: 410, index: 0), "CDX" )
        XCTAssertEqual(converter.convert(number: 447, index: 0), "CDXLVII" )
        XCTAssertEqual(converter.convert(number: 910, index: 0), "CMX" )
        XCTAssertEqual(converter.convert(number: 998, index: 0), "CMXCVIII" )
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
