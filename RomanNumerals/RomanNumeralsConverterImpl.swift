//
// Created by Karl Sigiscar on 9/27/18.
// Copyright (c) 2018 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class RomanNumeralsConverterImpl : RomanNumeralsConverter {
    func convert(number: Int, index: Int = 0) -> String {

        var remnant = number
        var romanNumerals = [(value: 1000, roman: "M", isEdgeCase: false),
                             (value: 900, roman: "CM", isEdgeCase: true),
                             (value: 500, roman: "D", isEdgeCase: false),
                             (value: 400, roman: "CD", isEdgeCase: true),
                             (value: 100, roman: "C", isEdgeCase: false),
                             (value: 90, roman: "XC", isEdgeCase: true),
                             (value: 50, roman: "L", isEdgeCase: false),
                             (value: 40, roman: "XL", isEdgeCase: true),
                             (value: 10, roman: "X", isEdgeCase: false),
                             (value: 5, roman: "V", isEdgeCase: false),
                             (value: 1, roman: "I", isEdgeCase: false)
        ]

        let currentItem = romanNumerals[index]
        let currentValue = currentItem.value
        let currentNumeral = currentItem.roman
        let isEdgeCase = currentItem.isEdgeCase
        var numeralString: String = ""

        if !isEdgeCase {
            let numberOfValue = remnant / currentValue
            remnant = remnant % currentValue
            numeralString = String(repeating: currentNumeral, count: numberOfValue)
        } else {
            let min = currentValue
            let max = romanNumerals[index - 1].value
            if remnant > min && remnant < max {
                remnant = remnant % currentValue
                numeralString = currentNumeral
            }
        }

        if index < romanNumerals.count - 1 {
            return "\(numeralString)\(convert(number: remnant, index: index + 1))"
        } else {
            return numeralString
        }
    }
}
