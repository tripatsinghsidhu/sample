//
//  ListViewModel.swift
//  sample
//
//  Created by Tripat Singh Sidhu on 03/05/24.
//

import Foundation

class ListViewModel {
    
    var posts = [PostModel]()
    var page = 1
    let limit = 10
    
    func getPosts(completion: @escaping()->Void) {
        APIHandler.getPosts(for: page, with: limit) { [self] posts in
            if page == 1 {
                self.posts = posts
            } else {
                self.posts.append(contentsOf: posts)
            }
            completion()
        }
    }
    
}
