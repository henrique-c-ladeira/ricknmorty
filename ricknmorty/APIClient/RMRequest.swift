//
//  RMRequests.swift
//  ricknmorty
//
//  Created by Henrique Ladeira on 15/01/23.
//

import Foundation

final class RMRequest {
    private struct Contants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        let pathComponentsString = pathComponents.joined(separator: "/")
        let queryParametersString = queryParameters.compactMap({
            guard let value = $0.value else { return "" }
            return "\($0.name)=\(value)"
        }).joined(separator: "&")
        
        let appendedSlash = pathComponentsString == "" ? "" : "/"
        
        return "\(Contants.baseUrl)\(endpoint.rawValue)\(appendedSlash)\(pathComponentsString)?\(queryParametersString)"
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let method = "GET"
    
    // Mark - public
    init(endpoint: RMEndpoint, pathComponents: [String], queryParameters: [URLQueryItem]) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
