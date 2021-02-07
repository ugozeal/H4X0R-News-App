//
//  PostData.swift
//  H4X0R News
//
//  Created by David U. Okonkwo on 2/7/21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
