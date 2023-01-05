//
//  DetailPage.swift
//  MovieInfo
//
//  Created by Consultant on 1/5/23.
//

import SwiftUI

struct DetailPage: View {
    
    let post: Post
    @State var image: Image
    
    var body: some View {
        VStack {
            self.image
                .resizable()
                .frame(width: 300, height: 300)
                .padding(.bottom, 30)
            VStack {
                Text(self.post.title)
                    .font(.headline)
                    .padding(.bottom, 10)
                Text(self.post.body)
                    .font(.subheadline)
            }
        }
        .onAppear {
            APICall.getImage(post: self.post) { image in
                self.image = image
            }
        }
    }
}

struct DetailPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPage(post: Post(userId: 1, id: 1, title: "", body: ""), image: Image(systemName: "person"))
    }
}
