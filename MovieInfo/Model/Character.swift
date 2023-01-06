//
//  Character.swift
//  MovieInfo
//
//  Created by Consultant on 1/6/23.
//

import Foundation

struct Character: Identifiable, Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
