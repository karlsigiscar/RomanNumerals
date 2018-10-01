//
// Created by Karl Sigiscar on 9/27/18.
// Copyright (c) 2018 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class ViewModel {
    
    var converter:RomanNumeralsConverter!
    
    init() {
        converter = RomanNumeralsConverterFactory.createConverter()
    }
    
    func convert(number:Int) -> String {
        return converter.convert(number: number, index: 0)
    }
}
