//
// Created by Karl Sigiscar on 9/27/18.
// Copyright (c) 2018 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class RomanNumeralsConverterFactory {
    static func createConverter() -> RomanNumeralsConverter {
        return RomanNumeralsConverterImpl()
    }
}