//
//  ConversationsView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 06.10.22.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
            NavigationLink(destination: ChatView(),
                           isActive: $showChat,
                           label: {})
            
            ScrollView {
                VStack {
                    ForEach(1..<9) { _ in
                        NavigationLink(destination: ChatView()) {
                            ConversationCell()
                        }
                    }
                }
            }
            
            Button(action: {
                self.isShowingNewMessageView.toggle()
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingNewMessageView) {
                NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
            }
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
