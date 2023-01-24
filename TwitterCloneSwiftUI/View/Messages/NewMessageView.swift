//
//  NewMessageView.swift
//  TwitterCloneSwiftUI
//
//  Created by Narek Ghukasyan on 07.10.22.
//

import SwiftUI

struct NewMessageView: View {
    @State var text: String = ""
    @Binding var show: Bool
    @Binding var startChat: Bool
    
    var body: some View {
        ScrollView {
            SearchBar(text: $text)
                .padding(10)
            
            VStack(alignment: .leading) {
                ForEach(1..<10) { _ in
                    Button {
                        self.show.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            self.startChat.toggle()
                        }
                        
                    } label: {
                        UserCell()
                    }
                }
            }.padding(.leading)
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show: .constant(true), startChat: .constant(true))
    }
}
