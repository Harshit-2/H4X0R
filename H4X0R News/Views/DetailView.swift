//
//  DetailView.swift
//  H4X0R News
//
//  Created by Harshit ‎ on 1/1/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
