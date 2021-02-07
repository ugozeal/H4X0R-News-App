//
//  ContentView.swift
//  H4X0R News
//
//  Created by David U. Okonkwo on 2/7/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailsView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "Hello there"),
//    Post(id: "2", title: "Hello there, wjo are you"),
//    Post(id: "3", title: "Hello there, when did u arrive")
//]
