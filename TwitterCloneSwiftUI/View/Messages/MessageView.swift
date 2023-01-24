//
//  MessageView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 07.10.22.
//

import SwiftUI

struct MessageView: View {
    let message: MockMessage
    
    init(for message: MockMessage) {
        self.message = message
    }
    
    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isFromCurrentUser: true))
                    .foregroundColor(.white)
                    .padding(.horizontal)
            } else {
                HStack(alignment: .bottom) {
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(message.messageText)
                        .padding()
                        .background(Color(UIColor.systemGray5))
                        .clipShape(ChatBubble(isFromCurrentUser: false))
                        .foregroundColor(.black)
                }.padding(.horizontal)
                Spacer()
            }
        }
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(for: MOCK_MESSAGES.first!)
    }
}
