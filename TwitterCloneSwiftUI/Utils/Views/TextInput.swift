//
//  TextInput.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 13.10.22.
//

import SwiftUI

enum TextInputType {
    case ordinary
    case secure
}

struct TextInput: View {
    @Binding var text: String
    let placeholder: Text
    let type: TextInputType
    let imageName: String
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(white: 1.0, opacity: 0.87))
                    .padding(.leading, 40)
            }
            
            HStack(spacing: 16) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                switch type {
                case .ordinary:
                    TextField("", text: $text)
                case .secure:
                    SecureField("", text: $text)
                }
            }
        }
    }
}

struct TextInput_Previews: PreviewProvider {
    static var previews: some View {
        TextInput(text: .constant(""), placeholder: Text("Type.."), type: .ordinary, imageName: "envelope")
    }
}
