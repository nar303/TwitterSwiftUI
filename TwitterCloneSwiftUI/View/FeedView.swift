//
//  FeedView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 03.10.22.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(1..<9) { _ in
                        TweetCell()
                    }
                }
            }
            
            Button(action: {self.isShowingNewTweetView.toggle()}, label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $isShowingNewTweetView) {
                NewTweetView(isPresented: $isShowingNewTweetView)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FeedView()
        }
    }
}
