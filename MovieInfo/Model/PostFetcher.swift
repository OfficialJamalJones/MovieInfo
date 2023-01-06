//
//  PostFetcher.swift
//  MovieInfo
//
//  Created by Consultant on 1/5/23.
//

import Foundation
import SwiftUI

class PostFetcher: ObservableObject {
    
    @Published  var results = [Result]()
    
    func fetchData(url: URL) -> Void? {
        
        let tempUrl = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        
        URLSession.shared.dataTask(with: tempUrl) { data, response, error in
            do {
                let tempMovies = try JSONDecoder().self.decode([Result].self, from: data!)
                DispatchQueue.main.async {
                    //self.posts = tempMovies
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
        return nil
    }
    
    func fetchImage(url: URL) {
        
    }
}

