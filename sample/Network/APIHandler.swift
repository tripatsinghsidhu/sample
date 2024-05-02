//
//  APIHandler.swift
//  sample
//
//  Created by Tripat Singh Sidhu on 03/05/24.
//

import Foundation

private let base = "https://jsonplaceholder.typicode.com"

class APIHandler {
    
    static func getPosts(for page: Int, with limit: Int, completion: @escaping(_ posts: [PostModel])->Void) {
        let url = URLRequest(url: URL(string: base + "/posts?page=\(page)&limit=\(limit)")!)
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                debugPrint("Error with fetching posts: \(error)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                debugPrint("Error with the response, unexpected status code: \(response)")
                return
            }
            
            if let data,
               let posts = try? JSONDecoder().decode([PostModel].self, from: data) {
                completion(posts)
            }
        }
        task.resume()
    }
        
}
