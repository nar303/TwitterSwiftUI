//
//  ProfileActionButtonVIew.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 07.10.22.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    var body: some View {
        if isCurrentUser {
            Button(action: {}) {
                Text("Edit Profile")
                    .frame(width: 300, height: 40)
                    .background(Color.blue)
                    .foregroundColor(.white)
            }
            .cornerRadius(20)
        } else {
            HStack {
                Button(action: {}) {
                    Text("Following")
                        .frame(width: 150, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                .cornerRadius(20)
                
                Button(action: {}) {
                    Text("Message")
                        .frame(width: 150, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                }
                .cornerRadius(20)
            }
        }
    }
}

struct ProfileActionButtonVIew_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}
