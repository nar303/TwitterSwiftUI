//
//  FilterButtonView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 07.10.22.
//

import SwiftUI

enum TweetFilterOptions: Int, CaseIterable {
    case tweet
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweet: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}

struct FilterButtonView: View {
    @Binding var selectedFilter: TweetFilterOptions
    private let underlineWidth = UIScreen.main.bounds.width / CGFloat(TweetFilterOptions.allCases.count)
    
    private var sliderAlignment: HorizontalAlignment {
        switch selectedFilter {
        case .tweet: return .leading
        case .replies: return .center
        case .likes: return .trailing
        }
    }
    
    var body: some View {
        
        VStack(alignment: sliderAlignment) {
            HStack {
                ForEach(TweetFilterOptions.allCases, id: \.self) { option in
                    Button {
                        withAnimation(.spring()) {
                            selectedFilter = option
                        }
                    } label: {
                        Text(option.title)
                            .frame(width: underlineWidth)
                            .foregroundColor(.blue)
                            .font(.system(size: 12))
                    }
                }
            }
            
            Rectangle()
                .frame(width: underlineWidth - 30.0, height: 3)
                .padding(.horizontal)
                .foregroundColor(.blue)
        }.onAppear {
            print("WWW - \(underlineWidth)")
        }
    }
}

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView(selectedFilter: .constant(.tweet))
    }
}
