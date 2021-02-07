//
//  DetailsView.swift
//  H4X0R News
//
//  Created by David U. Okonkwo on 2/7/21.
//

import SwiftUI

struct DetailsView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}

