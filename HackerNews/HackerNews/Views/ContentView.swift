//
//  ContentView.swift
//  HackerNews
//
//  Created by Ravi Navarro  on 16/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                            .padding(.top)
                    }
                }
            }
            .navigationBarTitle("HackerNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}