//
//  ChatView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 06.10.22.
//

import SwiftUI

struct ChatView: View {
    @State var messageText = ""
    var isFrom = false
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(MOCK_MESSAGES) { message in
                        MessageView(for: message)
                    }
                }
            }.padding(.top)
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

