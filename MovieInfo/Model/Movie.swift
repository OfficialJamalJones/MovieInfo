//
//  Movie.swift
//  MovieInfo
//
//  Created by Consultant on 1/5/23.
//

import Foundation

struct Movie: Identifiable, Codable {
    let id: Int
    let title: String
    let description: String
    let image: String
}
