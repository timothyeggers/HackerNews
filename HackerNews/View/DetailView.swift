//
//  DetailView.swift
//  HackerNews
//
//  Created by Tim Eggers on 12/27/22.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "google.com")
    }
}


