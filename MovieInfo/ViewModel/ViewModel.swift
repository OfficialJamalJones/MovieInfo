//
//  ViewModel.swift
//  MovieInfo
//
//  Created by Consultant on 1/5/23.
//

import Foundation
import SwiftUI

class APICall {
    static func getData(urlString: String, completion: @escaping ([Post]) -> ()) {
        guard let url = URL(string: urlString) else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            do {
                let results = try JSONDecoder().self.decode([Post].self, from: data!)
                DispatchQueue.main.async {
                    completion(results)
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
    
    static func getImage(post: Post, completion: @escaping (Image) -> ()) {
        completion(Image(systemName: "person"))
    }
}

public let moviesURL = "https://rickandmortyapi.com/api/character"
public let postsURL = "https://jsonplaceholder.typicode.com/posts"

struct Post: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}


struct Response: Codable {
    let info: Info
    let results: [Result]
}

struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String
    let prev: String?
}

struct Result: Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episodes: [String]
    let url: String
    let created: String
}

struct Origin: Codable {
    let name: String
    let url: String
}

struct Location: Codable {
    let name: String
    let url: String
}

