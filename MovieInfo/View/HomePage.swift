//
//  HomePage.swift
//  MovieInfo
//
//  Created by Consultant on 1/5/23.
//

import SwiftUI

struct HomePage: View {
    //Add test and UItest
    @ObservedObject var fetcher = PostFetcher()
    @State var posts : [Post] = []
    
    var body: some View {
        NavigationView {
            List(self.posts) { post in
                NavigationLink(destination: DetailPage(post: post, image: Image(systemName: "person"))) {
                    Text(post.title)
                        .font(.headline)
                        .padding()
                }
                
            }
            .navigationTitle("Home Page")
            .onAppear{
                
            }
            .onAppear {
                APICall.getData(urlString: postsURL) { posts in
                    self.posts = posts
                }
            }
        }
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
