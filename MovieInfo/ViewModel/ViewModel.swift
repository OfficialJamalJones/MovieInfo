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
                let tempMovies = try JSONDecoder().self.decode([Post].self, from: data!)
                DispatchQueue.main.async {
                    completion(tempMovies)
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
