//
//  RMEndpointTests.swift
//  ricknmortyTests
//
//  Created by Henrique Ladeira on 15/01/23.
//

import XCTest
@testable import ricknmorty

final class RMEndpointTests: XCTestCase {

    func test_empty_if_no_endpoints() throws {
        let sut = makeSut(endpoints: [])
        XCTAssertEqual(sut.rawValue, "")
    }
    
    func test_correct_rawValue_for_3_sized_array() throws {
        let sut = makeSut(endpoints: ["first","endpoint","test"])
        let expectedRawValue = "first/endpoint/test"
        XCTAssertEqual(sut.rawValue, expectedRawValue)
    }
    
    func test_correct_rawValue_for_1_sized_array() throws {
        let sut = makeSut(endpoints: ["first"])
        let expectedRawValue = "first"
        XCTAssertEqual(sut.rawValue, expectedRawValue)
    }
    
    // MARK - Utils
    private func makeSut(endpoints: [String] = []) -> RMEndpoint {
        return RMEndpoint(endpoints: endpoints)
    }

}
