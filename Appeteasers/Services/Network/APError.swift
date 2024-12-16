//
//  APError.swift
//  Appeteasers
//
//  Created by Yohai on 16/12/2024.
//

import Foundation

enum APError: Error, CustomStringConvertible {
    case invalidURL
    case invalidResponse
    case invalidData
    case decodingFailure
    case unableToComplete
    
    var description: String {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid response"
        case .invalidData:
            return "Invalid date"
        case .decodingFailure:
            return "Decoding failure"
        case .unableToComplete:
            return "Unable to complete"
        }
    }
}
