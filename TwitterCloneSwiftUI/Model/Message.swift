//
//  Message.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 07.10.22.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    
    .init(id: 0, imageName: "spiderman", messageText: "Hey what's up", isCurrentUser: false),
    .init(id: 1, imageName: "batman", messageText: "Not much, you?", isCurrentUser: true),
    .init(id: 2, imageName: "batman", messageText: "How's to travel universe?", isCurrentUser: true),
    .init(id: 3, imageName: "spiderman", messageText: "It's pretty good dude", isCurrentUser: false),
    .init(id: 4, imageName: "spiderman", messageText: "How's your battle with the Joker?", isCurrentUser: false),
    .init(id: 5, imageName: "batman", messageText: "Not going so hard..", isCurrentUser: true)
]
