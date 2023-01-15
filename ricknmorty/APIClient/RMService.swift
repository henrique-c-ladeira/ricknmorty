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
    
    private func execute(_ request: RMRequest, completion: @escaping (Result<String,Error>) -> Void) {
        
    }
}
