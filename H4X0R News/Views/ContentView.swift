//
//  ContentView.swift
//  H4X0R News
//
//  Created by Harshit ‎ on 1/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            VStack {
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

#Preview {
    ContentView()
}


//let posts = [Post(id: "1", title: "Hello"),
//             Post(id: "2", title: "Bonjor"),
//             Post(id: "3", title: "Hola")
//]
