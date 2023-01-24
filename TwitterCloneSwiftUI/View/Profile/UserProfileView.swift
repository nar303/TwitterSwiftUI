//
//  UserProfileView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 07.10.22.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter: TweetFilterOptions = .tweet
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                FilterButtonView(selectedFilter: $selectedFilter)
                    .padding()
            }
        }
        .navigationTitle("batman")
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
