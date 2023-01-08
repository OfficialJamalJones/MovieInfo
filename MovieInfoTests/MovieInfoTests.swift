//
//  MovieInfoTests.swift
//  MovieInfoTests
//
//  Created by Consultant on 1/5/23.
//

import XCTest
@testable import MovieInfo

final class MovieInfoTests: XCTestCase {

    func testAPICall() {
        APICall.getData(urlString: postsURL) { posts in
            print("Posts: \(posts)")
        }
    }

}
