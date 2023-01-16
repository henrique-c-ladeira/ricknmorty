//
//  RMEndpoints.swift
//  ricknmorty
//
//  Created by Henrique Ladeira on 15/01/23.
//

import Foundation

final class RMEndpoint {
    private var endpoints: [String]
    public var rawValue: String {
        return endpoints.joined(separator: "/")
    }
    
    init(endpoints: [String] = []) {
        self.endpoints = endpoints
    }
}
