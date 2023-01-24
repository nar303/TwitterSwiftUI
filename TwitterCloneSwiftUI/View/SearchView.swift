//
//  SearchView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 04.10.22.
//

import SwiftUI

struct SearchView: View {
    @State var text: String = ""
    var body: some View {
        ScrollView {
            SearchBar(text: $text)
                .padding(10)
            
            VStack(alignment: .leading) {
                ForEach(1..<10) { _ in
                    NavigationLink(destination: UserProfileView()) {
                        UserCell()
                    }
                    
                }
            }.padding(.leading)
        }
        .navigationTitle("Search")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
