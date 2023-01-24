//
//  ContentView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 03.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AccountView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Home")
                    }
                ConversationsView()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Home")
                    }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Home")
        }
    }
}
