//
//  MessageInputView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 06.10.22.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    var body: some View {
        HStack {
            TextField("message", text: $messageText)
                .textFieldStyle(.plain)
                .frame(minHeight: 30)
            
            Button(action: {}) {
                Text("Send")
            }
        }
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(messageText: .constant("message"))
    }
}
