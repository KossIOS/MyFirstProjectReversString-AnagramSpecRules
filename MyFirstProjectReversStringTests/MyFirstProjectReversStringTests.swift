//
//  MyFirstProjectReversStringTests.swift
//  MyFirstProjectReversStringTests
//
//  Created by Konstantyn Koroban on 27/09/2022.
//

import XCTest
@testable import MyFirstProjectReversString

class ReverserUnitTests: XCTestCase {
    
    var reverser : Reverser!
    
    override func setUp() {
        super.setUp()
        reverser = Reverser()
    }
    
    override func tearDown() {
        reverser = nil
    }
    
    func testReverseTwoWords() {
        let expectedResult = "tseT gnirts"
        let sut = reverser.reverseString(sentence: "Test string")
        XCTAssertEqual(sut, expectedResult)
    }
    
    func testReverseStringWithPunctuation() {
        let expectedResult = ".emosewA"
        let sut = reverser.reverseString(sentence: "Awesome.")
        XCTAssertEqual(sut, expectedResult)
    }
}
