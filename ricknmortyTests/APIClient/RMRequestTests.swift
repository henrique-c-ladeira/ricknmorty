//
//  RMRequestTests.swift
//  ricknmortyTests
//
//  Created by Henrique Ladeira on 15/01/23.
//

import XCTest
@testable import ricknmorty

final class RMRequestTests: XCTestCase {
    

    func test_string_url_with_2_pathComponents_and_1_query_item() throws {
        let sut = makeSut(endpoint: RMEndpoint(), pathComponents: ["pathComponent1","pathComponent2"], queryParameters: [URLQueryItem(name: "name", value: "value")])
        
        let expectedUrlString = "https://rickandmortyapi.com/api/pathComponent1/pathComponent2?name=value"
        
        XCTAssertEqual(sut.url?.absoluteString, expectedUrlString)
    }
    
    func test_string_url_with_1_pathComponents_and_2_query_item() throws {
        let sut = makeSut(endpoint: RMEndpoint(), pathComponents: ["pathComponent1"],
                          queryParameters: [URLQueryItem(name: "name1", value: "value1"), URLQueryItem(name: "name2", value: "value2")])
        
        let expectedUrlString = "https://rickandmortyapi.com/api/pathComponent1?name1=value1&name2=value2"
        XCTAssertEqual(sut.url!.absoluteString, expectedUrlString)
    }
    
    func test_string_url_with_0_pathComponents_and_2_query_item() throws {
        let sut = makeSut(endpoint: RMEndpoint(), pathComponents: [""],
                          queryParameters: [URLQueryItem(name: "name1", value: "value1"), URLQueryItem(name: "name2", value: "value2")])
        
        let expectedUrlString = "https://rickandmortyapi.com/api?name1=value1&name2=value2"
        XCTAssertEqual(sut.url!.absoluteString, expectedUrlString)
    }
    
    // Mark - Utils
    private func makeSut(endpoint: RMEndpoint, pathComponents: [String], queryParameters: [URLQueryItem]) -> RMRequest {
        let sut = RMRequest(endpoint: endpoint, pathComponents: pathComponents, queryParameters: queryParameters)
        return sut
    }

}
