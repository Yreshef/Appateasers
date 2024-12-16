//
//  NetworkService.swift
//  Appeteasers
//
//  Created by Yohai on 16/12/2024.
//

import Foundation
import Combine

protocol NetworkServicable {
    func getAppateasers(completed: @escaping (Result<[Appateaser], APError>) -> Void)
}

//TODO: Replace completion handler with combine functionality
final class NetworkService: NetworkServicable {
    
    private let session: URLSession
    private let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private lazy var appateaserURL = baseURL + "appetizers"
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func getAppateasers(completed: @escaping (Result<[Appateaser], APError>) -> Void) {
        
        guard let url = URL(string: appateaserURL) else {
            completed(.failure(.invalidURL))
            return
        }
        let request = URLRequest(url: url)
        
        let task  = session.dataTask(with: request) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            //TODO: Tailor for other status codes
            guard let response = response as? HTTPURLResponse,
                  200...299 ~= response.statusCode else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResposne = try decoder.decode(AppateaserResponse.self, from: data)
                completed(.success(decodedResposne.request))
            } catch {
                completed(.failure(.decodingFailure))
            }
        }
        task.resume()
    }
}
