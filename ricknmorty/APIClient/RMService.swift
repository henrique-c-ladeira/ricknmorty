//
//  RMServices.swift
//  ricknmorty
//
//  Created by Henrique Ladeira on 15/01/23.
//

import Foundation

final class RMService {
    static let shared = RMService()
    
    private init() {
        
    }
    
    private func execute<T: Codable>(_ request: RMRequest,
                                     expecting type: T.Type,
                                     completion: @escaping (Result<String,Error>) -> Void) {
        
    }
}
