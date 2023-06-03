//
//  ContentView.swift
//  HackerNews
//
//  Created by Tim Eggers on 12/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            VStack {
                Rectangle().frame(height: 50).background(Color.black).overlay(
                    Text("Hacker News")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                )
                List(networkManager.posts) { post in
                    NavigationLink(destination: DetailView(url: post.url)) {
                        HStack{
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                    
                    
                }
                .listStyle(.plain)
                .onAppear {
                    self.networkManager.fetchData()
                }
                
            }
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
